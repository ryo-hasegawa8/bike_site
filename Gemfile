source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.7'
gem 'bootstrap', '~> 4.3.1'
gem 'bootstrap4-datetime-picker-rails'
gem 'momentjs-rails'
gem "font-awesome-rails"
gem 'jquery-rails'
gem 'devise'
gem 'omniauth-twitter'
gem 'paperclip'
gem 'geocoder'
gem 'sqlite3'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'carrierwave'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'will_paginate',           '3.1.5'
gem 'bootstrap-will_paginate', '1.0.0'

group :development, :test do
  gem 'rspec-rails', '~> 3.6.0'
  gem "factory_bot_rails", "~> 4.10.0"
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'rubocop-airbnb'
  gem 'faker'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
