# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.1'
# Use sqlite3 as the database for Active Record
gem 'pg', '~> 1.2', '>= 1.2.3'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'jwt', '~> 2.2', '>= 2.2.3'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
gem 'devise', '~> 4.8'

gem 'rails_same_site_cookie', '~> 0.1.8'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  gem 'rspec-rails', '~> 4.0', '>= 4.0.2'

  gem 'factory_bot_rails', '~> 6.1'

  gem 'simplecov', '~> 0.21.2'

  gem 'rspec-collection_matchers', '~> 1.2'
end

group :development do
  gem 'rubocop', '~> 1.9', '>= 1.9.1'
end

group :test do
  gem 'database_cleaner-active_record', '~> 2.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
