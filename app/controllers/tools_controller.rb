class ToolsController < ApplicationController
  def resources
  	@resource_categories = ResourceCategory.where(resource_category_id: nil).order('rank asc')
  	if params[:resource_category] then
  		@selected_category = ResourceCategory.where(resource_category_id: nil).find_by_title(params[:resource_category])
  		if @selected_category then
  			return
  		end
  	end
  	@selected_category = @resource_categories.first
  end

  def services
  	@service_categories = ServiceCategory.order("rank asc")
  	if params[:service_category] then
  		@selected_category = ServiceCategory.find_by_title(params[:service_category])
  		if @selected_category then
        @featured = false
  			@services = @selected_category.services.order("rank asc")
  			return
  		end
  	end
  	@selected_category = nil
    @featured = true
  	@services = Service.where(featured: true).order("featured_rank asc")
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

  def this_service

    tracker = Mixpanel::Tracker.new ENV["MIXPANEL_ID"], { :env => request.env }


    this_service = Service.find(params[:id])
    rank = (params[:featured] and this_service.featured) ? this_service.featured_rank : this_service.rank
    tracker.track 'Clicked on service', {service_name: this_service.title, featured: params[:featured], rank: rank, place_of_click: params[:location].to_i}

    redirect_to this_service.out_link
  end

end
