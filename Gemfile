source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
gem 'devise'
gem 'will_paginate'
gem 'whenever'
gem 'delayed_job'
gem 'paperclip'
gem 'tinymce-rails'
gem 'rack-raw-upload'#, :git => 'git://github.com/newbamboo/rack-raw-upload.git' # necessary for multiple file uploads
gem 'whenever', :require => false

# Assets compiling
group :production do
  gem 'execjs'
  gem 'therubyracer'  
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
  gem 'rspec-rails'
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  # gem 'guard-rspec'
  # gem 'guard-cucumber'
  # gem 'rb-fsevent'
  # gem 'growl_notify'
  gem 'spork', '~>0.9.0.rc9'
end
