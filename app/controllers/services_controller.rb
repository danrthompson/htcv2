class ServicesController < ApplicationController

	def index
		@service_categories = ServiceCategory.order("rank asc")
		if params[:service_category] then
	    if params[:service_category] == "Video" then
	      @video = true
	      @featured = false
	      return
	    else
	  		@selected_category = ServiceCategory.find_by_title(params[:service_category])
	  		if @selected_category then
	        @featured = false
	  			@services = @selected_category.services.order("rank asc")
	  			return
	  		end
	    end
		end
		@selected_category = nil
	  @featured = true
		@services = Service.where(featured: true).order("featured_rank asc")

	end

  def create_video_request
    vid_request = VideoRequest.create(params[:video_request])
    if vid_request.valid? then
      if current_user then
        vid_request.user_id = current_user.id
        vid_request.save
      end
      redirect_to :back, notice: "Thanks for your request! Someone will be in touch soon." and return
    end
    redirect_to :back, notice: "Error saving your request, please include all fields."
  end

  def this_service

    tracker = Mixpanel::Tracker.new ENV["MIXPANEL_ID"], { :env => request.env }


    this_service = Service.find(params[:id])
    rank = (params[:featured] and this_service.featured) ? this_service.featured_rank : this_service.rank
    tracker.track 'Clicked on service', {service_name: this_service.title, featured: params[:featured], rank: rank, place_of_click: params[:location].to_i}

    redirect_to this_service.out_link
  end

  def create_tool_suggestion
    if params[:tool_suggestion] then
      tool_suggestion = ToolSuggestion.new(params[:tool_suggestion])
      tool_suggestion.user_id = (current_user ? current_user.id : nil)
      tool_suggestion.save
      if tool_suggestion.valid? then
        redirect_to :back, notice: "Thanks for sharing! We'll take a look at your submission and incorporate it into the site soon!" and return
      end
    end
    redirect_to :back, notice: "Please include all required information."
  end

  def create_service_lead
    if params[:service_lead] then
      service_lead = ServiceLead.new(params[:service_lead])
      service_lead.user_id = (current_user ? current_user.id : nil)
      service_lead.save
      if service_lead.valid? then
        redirect_to :back, notice: "Thanks for reaching out! Your message will be forwarded along, and you should hear back soon." and return
      end
    end
    redirect_to :back, notice: "Please include all required information."
  end





end
