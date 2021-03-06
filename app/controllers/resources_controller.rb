class ResourcesController < ApplicationController

	def index
		@resource_categories = ResourceCategory.where(resource_category_id: nil).order('rank asc')
		if params[:seo_url] then
			@selected_category = ResourceCategory.where(resource_category_id: nil).find_by_seo_url(params[:seo_url])
			if @selected_category then
				return
			end
		end
		@selected_category = @resource_categories.first
	end

	def show
		@resource = Resource.find_by_seo_url(params[:seo_url])
		@resource || (redirect_to resources_path and return)
		@resource_categories = ResourceCategory.where(resource_category_id: nil).order('rank asc')
		@selected_category = @resource.parent_resource_category
	end

	# def create
	#   authorize! :create, Resource
	#   @post = post_klass.new(params[post_klass.name.underscore])
	#   @post.user_id = current_user ? current_user.id : -1

	#   respond_to do |format|
	#     if @post.save
	#       format.html { redirect_to post_url_helper, notice: "#{post_klass.friendly_name} was successfully created." }
	#       format.json { render json: @post, status: :created, location: @post }
	#     else
	#       format.html { redirect_to post_url_helper, notice: @post.errors.full_messages.first }
	#       format.json { render json: @post.errors, status: :unprocessable_entity }
	#     end
	#   end
	# end
end
