class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

	def admin_auth_check!
    authorize! :access, :admin_area
  end

  def htcv2_config
    @@htcv2_config = Htcv2::Config.default
  end
  helper_method :htcv2_config
end
