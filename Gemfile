# frozen_string_literal: true

ruby '3.0.1'
source 'https://rubygems.org'

gem 'bootsnap', require: false
gem 'dotenv-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rack-cors', require: 'rack/cors'
gem 'rails', '~> 7.0.4'

# auth
gem 'jwt'
gem 'knock', git: 'https://github.com/nsarno/knock', branch: 'master', ref: '9214cd027422df8dc31eb67c60032fbbf8fc100b'

gem 'blueprinter'

group :development, :test do
  gem 'pry'
  gem 'rubocop'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
