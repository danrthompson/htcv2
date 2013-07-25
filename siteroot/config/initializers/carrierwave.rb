CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAJOFY7RVQXDXGNZNQ',
                            # required
    :aws_secret_access_key  => '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',                        # required
  }
  config.fog_directory  = 'HarnessTheCrowd'                     # required
end





