source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"
gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'rack-cors', :require => 'rack/cors'

gem "dotenv-rails"
gem "rubocop"

# Auth
gem "devise"
gem 'devise_token_auth'
gem "omniauth"
gem "omniauth-google-oauth2"
# gem "omniauth-rails_csrf_protection"

group :development, :test do
  gem "pry"
end

group :development do
  gem "web-console"
end
