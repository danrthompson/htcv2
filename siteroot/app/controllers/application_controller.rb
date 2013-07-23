class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  def enki_config
    @@enki_config = Htcv2::Config.default
  end
  helper_method :enki_config
end
