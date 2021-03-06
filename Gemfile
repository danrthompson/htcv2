source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'figaro'
gem 'acts_as_commentable_with_threading'
gem 'paperclip'
gem 'aws-sdk'
gem 'carrierwave'
gem 'fog'
gem 'carrierwave_direct'
gem 'sidekiq'
gem 'devise'
gem 'open_id_authentication'
gem 'cancan', '1.6.8'
gem 'delayed_job_active_record'
gem 'delayed_paperclip'
gem "auto_html"
gem 'activerecord-reputation-system', require: 'reputation_system'
gem 'kaminari'
gem 'thin'
gem 'workless'
gem 'activeadmin'
gem 'mixpanel'
gem 'seedbank', github: 'james2m/seedbank'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.6'
  gem 'coffee-rails', '~> 3.2.1'


  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'less-rails'

  gem 'uglifier', '>= 1.0.3'
  gem 'turbo-sprockets-rails3'
end

gem 'jquery-rails', '2.2.1'
gem "haml"
gem "haml-rails"


# for htcv2
gem 'RedCloth', '~> 4.2.9', :require => 'redcloth'
gem 'ruby-openid', :require => 'openid'
gem 'rack-openid', :require => 'rack/openid'
gem 'aaronh-chronic', :require => 'chronic' # Fixes for 1.9.2
gem 'coderay', '~> 1.0.5'
gem 'lesstile', '~> 1.1.0'
gem 'formtastic'
gem 'will_paginate', '~> 3.0.2'
gem 'exception_notification', '~> 2.5.2'


group :test do
  gem 'database_cleaner'
  gem 'cucumber-rails',    :require => false
  gem 'cucumber-websteps', :require => false
  gem 'factory_girl'
  gem 'rspec'
  gem 'nokogiri', '~> 1.5.0'
  gem 'webrat'
end

group :development, :test do
  gem 'rspec-rails'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'awesome_print'
end
# end for htcv2

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem 'spree', '2.0.3'
gem 'spree_gateway', :git => 'https://github.com/spree/spree_gateway.git', :branch => '2-0-stable'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git', :branch => '2-0-stable'
