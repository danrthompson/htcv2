# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'


Spree.user_class = "Spree::User"

Spree.config do |config|
  config.use_s3 = ((ENV['UPLOAD_STORAGE'] == 's3') ? true : false)
  config.s3_bucket = ENV['AWS_BUCKET']
  config.s3_access_key = ENV['AWS_ACCESS_KEY_ID']
  config.s3_secret = ENV['AWS_SECRET_ACCESS_KEY']
  config.layout = 'layouts/application'
end
