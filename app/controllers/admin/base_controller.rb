class Admin::BaseController < ApplicationController
  layout 'admin'
  before_filter :admin_auth_check!

  protected

  def set_content_type
    headers['Content-Type'] ||= 'text/html; charset=utf-8'
  end
end
