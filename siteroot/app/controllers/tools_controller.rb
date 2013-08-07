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

# move these =validations and callbacks into the model
  # def create_service_lead
  #   if params[:service_lead] then
  #     service_lead = ServiceLead.new(params[:service_lead])
  #     if service_lead.valid? then
  #       service = Service.find_by_id(params[:service_lead][:service_id])
  #       if service then
  #         service_lead.user_id = (current_user ? current_user.id : nil)
  #         service_lead.service_rank = (service_lead.featured_page ? service.featured_rank : service.rank)
  #         service_lead.save
  #         redirect_to :back, notice: "Thanks for reaching out! Your message will be forwarded along, and you should hear back soon."

  #   end
  #   redirect_to :back, notice: "Please include all required information."
  # end
end

      

# inquiry_type:string message:text email:string user_name:string service_id:integer featured_page:boolean

# user_id:integer  service_rank:integer