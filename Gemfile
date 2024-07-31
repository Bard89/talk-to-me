# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby file: ".ruby-version"

# Framework
gem "pg", "~> 1.5", ">= 1.5.7"
gem "rails", "~> 7.1", ">= 7.1.3.4"
gem "seedbank", "~> 0.5.0"
# gem 'sentry-rails', '~> 5.17', '>= 5.17.1'
# gem 'sentry-ruby', '~> 5.17', '>= 5.17.1'
# gem 'sentry-sidekiq', '~> 5.17', '>= 5.17.1'
gem "activerecord-import", "~> 1.7"
gem "importmap-rails" # Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "jbuilder" # Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jsonapi-serializer", "~> 2.2"
gem "puma", "~> 6.4" # Use the Puma web server [https://github.com/puma/puma]
gem "redis", "~> 5.2" # Use Redis adapter to run Action Cable in production

gem "sassc", "~> 2.4" # TODO; after the gem catches with modern syntax in tailwind remove the disabling of
# css_compressor in test and production environments

gem "sassc-rails", "~> 2.1", ">= 2.1.2"
gem "sprockets-rails" # The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "stimulus-rails" # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "tailwindcss-rails", "~> 2.6", ">= 2.6.5"
gem "turbo-rails" # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
# gem "kredis" # Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false # Reduces boot times through caching; required in config/boot.rb
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# gem "sassc-rails" # Use Sass to process CSS
# gem "image_processing", "~> 1.2"

# Assets

# API
# gem 'grape', '~> 2.0'
# gem 'grape_logging', '~> 1.8', '>= 1.8.4'
# gem 'grape-swagger', '~> 2.0', '>= 2.0.2'
# gem 'grape-swagger-rails', '~> 0.4.0'

# Authentication
gem "devise", "~> 4.9"

# Authorization
gem "cancancan", "~> 3.6", ">= 3.6.1"
# gem 'pundit', '~> 2.3', '>= 2.3.1' # alternative to cancancan
# gem 'pretender', '~> 0.5.0'

# Eco system
# gem 'sidekiq', '~> 7.2', '>= 7.2.2'

# I18n
gem "devise-i18n", "~> 1.12", ">= 1.12.1"
gem "i18n", "~> 1.14"

# Controller Extensions
#

# Model Extensions
gem "enumerize", "~> 2.8", ">= 2.8.1"
# gem 'polymorphic_integer_type', '~> 3.2', '>= 3.2.2' # TODO; implement after it supports current rails
# gem 'auto_strip_attributes', '~> 2.6'
# gem 'counter_culture', '~> 3.5', '>= 3.5.3'
# gem 'email_validator', '~> 2.2', '>= 2.2.4'
# gem 'discard', '~> 1.3'

# Pagination
# gem 'pagy', '~> 7.0', '>= 7.0.11'

# View Extensions
# gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.8'

# Forms Extensions
gem "simple_form", "~> 5.3", ">= 5.3.1"

# IRB
gem "amazing_print", "~> 1.6", require: false
# gem "rainbow", "~> 3.1", ">= 3.1.1" # TODO; use later to distinguish development and production environments

group :development do
  gem "annotate", "~> 3.2"
  gem "rspec-rails", "~> 6.1", ">= 6.1.2"
  # gem "bullet", "~> 7.0", ">= 7.0.1"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  # gem "capybara", "~> 3.40"
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails", "~> 6.4", ">= 6.4.3"
  gem "ffaker", "~> 2.23"
  # gem "parallel", "~> 1.24"
  gem "execjs", "~> 2.9", ">= 2.9.1" # rewuired after adding the pre-commit
  gem "pre-commit", "~> 0.40.0", require: false
  gem "rubocop", "~> 1.63", require: false
  gem "rubocop-performance", "~> 1.21"
  gem "rubocop-rails", "~> 2.24", ">= 2.24.1", require: false
  gem "rubocop-rspec", "~> 2.29"
  gem "web-console", "~> 4.2", ">= 4.2.1"
  # Review tools
  gem "faraday-retry", "~> 2.2", ">= 2.2.1"
  gem "pronto"
  gem "pronto-rubocop", require: false
  gem "suspenders", github: "thoughtbot/suspenders"
end

# group :test do
# end

# group :production do
# end
