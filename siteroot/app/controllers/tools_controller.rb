class ToolsController < ApplicationController
  def resources
  	@resources = Resource.all
  end

  def services
  	@service_categories = ServiceCategory.order("rank asc")
  	if params[:service_category] then
  		@selected_category = ServiceCategory.find_by_title(params[:service_category])
  		if @selected_category then
  			@services = @selected_category.services.order("rank asc")
  			return
  		end
  	end
  	@selected_category = @service_categories.first
  	@services = @selected_category.services.order("rank asc")
  end
end
