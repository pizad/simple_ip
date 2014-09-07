source 'https://rubygems.org'
# Set Ruby version per Heroku instead of rbenv
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

group :development, :test do
  	gem 'rspec-rails', '2.13.1'
end

group :test do
  	gem 'selenium-webdriver', '2.35.1'
  	gem 'capybara', '2.1.0'
end

# Include PostgreSQL and 'rails_12factor gem per Heroku
group :production, :staging do
    gem 'pg', '0.15.1'
  	gem 'rails_12factor', '0.0.2'
end

# Use Bootstrap and SCSS for stylesheets
# Use Uglifier as compressor for JavaScript assets
# Use CoffeeScript for .js.coffee assets and views
group :assets do
	gem 'bootstrap-sass', '2.3.2'
	gem 'sass-rails', '4.0.3'
	gem 'sprockets', '2.11.0'
	gem 'autoprefixer-rails'
	gem 'uglifier', '2.1.1'
	gem 'coffee-rails', '4.0.1'
end

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.0.4'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.1.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.0.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '0.3.20', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
