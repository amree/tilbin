# frozen_string_literal: true

source "https://rubygems.org"

ruby "2.4.2"

gem "autoprefixer-rails"
gem "bootstrap", "~> 4.0.0.beta3"
gem "delayed_job_active_record"
gem "devise"
gem "flutie"
gem "high_voltage"
gem "jquery-rails"
gem "kramdown"
gem "mysql2"
gem "puma"
gem "rack-canonical-host"
gem "rails", "~> 5.1.3"
gem "recipient_interceptor"
gem "sass-rails", "~> 5.0"
gem "sassc-rails"
gem "simple_form"
gem "skylight"
gem "sprockets", ">= 3.0.0"
gem "suspenders"
gem "title"
gem "uglifier"

group :development do
  gem "listen"
  gem "overcommit", require: false
  gem "rack-mini-profiler", require: false
  gem "rubocop", require: false
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bullet"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.6"
end

group :test do
  gem "capybara-webkit"
  gem "database_cleaner"
  gem "launchy"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :production do
  gem "rack-timeout"
end
