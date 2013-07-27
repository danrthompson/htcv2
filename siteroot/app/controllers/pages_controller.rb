class PagesController < ApplicationController
	before_filter :admin_auth_check!

  def show
    @page = Page.find_by_slug(params[:id]) || raise(ActiveRecord::RecordNotFound)
  end
end
