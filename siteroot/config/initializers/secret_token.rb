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
  Htcv2::Application.config.secret_token = '3cf62f9930f04d94212e7b4a7e4df6b3e2d97980c7cf5fca8c1ed810b991f96944cf29929994c48391be78f03446b491495a6b3e5b87e37e66c2ec200e641a09'
end
