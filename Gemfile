# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.0"

# Framework
gem "pg", "~> 1.5", ">= 1.5.6"
gem "rails", "~> 7.1", ">= 7.1.3.2"
gem "seedbank", "~> 0.5.0"
# gem 'sentry-rails', '~> 5.17', '>= 5.17.1'
# gem 'sentry-ruby', '~> 5.17', '>= 5.17.1'
# gem 'sentry-sidekiq', '~> 5.17', '>= 5.17.1'
gem "activerecord-import", "~> 1.6"
gem "importmap-rails" # Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "jbuilder" # Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jsonapi-serializer", "~> 2.2"
gem "puma", "~> 5.0" # Use the Puma web server [https://github.com/puma/puma]
gem "redis", "~> 4.0" # Use Redis adapter to run Action Cable in production
gem "sassc", "~> 2.4"
gem "sprockets-rails" # The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "stimulus-rails" # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "tailwindcss-rails", "~> 2.4"
gem "turbo-rails" # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
# gem "kredis" # Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "bcrypt", "~> 3.1.7" # Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bootsnap", require: false # Reduces boot times through caching; required in config/boot.rb
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem

# gem "sassc-rails" # Use Sass to process CSS
# gem "image_processing", "~> 1.2" # Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]

# Assets

# API
# gem 'grape', '~> 2.0'
# gem 'grape_logging', '~> 1.8', '>= 1.8.4'
# gem 'grape-swagger', '~> 2.0', '>= 2.0.2'
# gem 'grape-swagger-rails', '~> 0.4.0'

# Authentication
gem "devise", "~> 4.9", ">= 4.9.3"

# Authorization
gem "cancancan", "~> 3.5"
# gem 'pundit', '~> 2.3', '>= 2.3.1' # alternative to cancancan
# gem 'pretender', '~> 0.5.0'

# Eco system
# gem 'sidekiq', '~> 7.2', '>= 7.2.2'

# I18n
gem "devise-i18n", "~> 1.12"
gem "i18n", "~> 1.14", ">= 1.14.4"

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
gem "simple_form", "~> 5.3"

# IRB
gem "amazing_print", "~> 1.6", require: false
# gem "rainbow", "~> 3.1", ">= 3.1.1" # TODO; use later to distinguish development and production environments

group :development, :test do
  gem "annotate", "~> 3.2"
  # gem "bullet", "~> 7.0", ">= 7.0.1"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  # gem "capybara", "~> 3.40"
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails", "~> 6.4", ">= 6.4.3"
  gem "ffaker", "~> 2.23"
  # gem "parallel", "~> 1.24"
  gem "execjs", "~> 2.9", ">= 2.9.1" # rewuired after adding the pre-commit
  gem "pre-commit", "~> 0.40.0", require: false
  gem "rubocop", "~> 1.62", ">= 1.62.1", require: false
  gem "rubocop-performance", "~> 1.21"
  gem "rubocop-rails", "~> 2.24", ">= 2.24.1", require: false
  gem "rubocop-rspec", "~> 2.28"
  gem "web-console", "~> 4.2", ">= 4.2.1"
  # Review tools
  gem "pronto"
  gem "pronto-rubocop", require: false
end

# group :production do
# end
