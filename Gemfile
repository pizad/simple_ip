source 'https://rubygems.org'

# Set Ruby version per Heroku instead of rbenv
ruby '2.0.0'

gem 'rails', '4.0.8'

# Hartl says use sprocket but bootstrap-sass github doesn't
# used @import bootstrap-sprockets in custom.css.scss instead
# OLD gem 'bootstrap-sass', '2.3.2.0'
# OLD gem 'sprockets', '2.11.0'
# OLD gem 'sass-rails', '4.0.3'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'sass-rails', '>= 3.2'
gem 'autoprefixer-rails'

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '3.1.2'

group :development, :test do
  	gem 'rspec-rails', '2.13.1'
  	gem 'guard-rspec', '2.5.0', require: false
end

group :test do
  	gem 'selenium-webdriver', '2.35.1'
  	gem 'capybara', '2.1.0'
  	gem 'factory_girl_rails', '4.2.0'
end

gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'
gem 'nokogiri', '~> 1.6.3.1'
gem 'mechanize', '~> 2.7.2'

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production, :staging do
    gem 'pg', '0.15.1'
  	gem 'rails_12factor', '0.0.2'
end

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
