require 'action_controller/metal/request_forgery_protection'

Htcv2::Application.config.middleware.use ExceptionNotifier,
  :ignore_exceptions    => [ActionController::InvalidAuthenticityToken],
  :email_prefix         => "[Htcv2] ",
  :sender_address       => [Htcv2::Config.default[:author, :email]],
  :exception_recipients => [Htcv2::Config.default[:author, :email]]
