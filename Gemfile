source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '3.3.6'

gem 'rails', '~> 8.0'
gem 'railties', '~> 8.0'
gem 'pg'
gem 'puma', '~> 6.0'
gem 'sassc-rails'
gem 'uglifier', '>= 1.3.0'
gem 'jbuilder', '~> 2.11'
gem 'turbo-rails'
gem 'jquery-rails'  # Certifique-se de que só tenha uma linha com essa gem
gem 'chosen-rails'
gem 'nokogiri'
gem 'nokogiri-styles'
gem 'simple_form'
gem 'cocoon'
gem 'will_paginate', '~> 3.1.0'
gem 'rails-i18n', '~> 8.0.0'
gem 'devise'
gem 'bootsnap', '~> 1.1', '>= 1.1.7'
gem 'paperclip', '~> 6.1'
gem 'sidekiq'
gem 'redis'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'factory_bot_rails', "~> 6.0"
  gem 'awesome_print'
  gem 'rspec-rails', "~> 7.1"
  gem 'faker'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.9.0'
  gem 'spring', '~> 4.1'
  gem 'spring-commands-rspec'
end

group :test do
  gem "shoulda-matchers", "~> 6.4.0"
  gem "simplecov", "~> 0.22.0"
  gem "database_cleaner-active_record", "~> 2.0"
end

group :production do
  gem 'unicorn'
  gem 'rails_12factor'
  gem 'activestorage', '~> 8.0'
  gem 'cloudinary', '~> 1.26.0'
  gem 'activestorage-cloudinary-service', '~> 0.2.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'font-awesome-rails'
gem 'ransack'
gem 'carrierwave', '~> 3.0'  # Atualizado para versão 3.0
gem 'roo', '~> 2.10', '>= 2.10.1'
gem 'csv', '~> 3.2'
gem 'bootstrap', '~> 5.1'
gem 'bootstrap-multiselect_rails'
gem 'bootstrap-datepicker-rails'
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.47'
gem 'summernote-rails'
gem 'jquery_mask_rails', '~> 0.1.0'
gem 'toastr-rails'
gem 'cpf_cnpj'
gem "importmap-rails", "~> 2.1"
gem 'jquery-ui-rails'
gem 'terser'