# Be sure to restart your server when you modify this file.

if Rails.env.development? || Rails.env.test?
  Htcv2::Application.config.secret_token = SecureRandom.hex(20)
else
  # Your secret key for verifying the integrity of signed cookies.
  # If you change this key, all old signed cookies will become invalid!
  # Make sure the secret is at least 30 characters and all random,
  # no regular words or you'll be exposed to dictionary attacks.
  # raise "Generate a secret with `rake secret` and paste it into `config/initializers/secret_token.rb`."

  # If this is an open source project, DO NOT commit your secret to source
  # control. Load it from ENV or a file that is git ignored (File.read)
  Htcv2::Application.config.secret_token = '113ef4ef33392ed203026a1401377fdb4d904f8b552bde493c3201eefcfa2e8b215bc949056b31951a76403df7778d0e314cee06eebd16160f5d846105e605c8'
end
