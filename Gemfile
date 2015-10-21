source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby


# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

gem 'sdoc', '~> 0.4.0', group: :doc

# respond_with rails controller
gem 'responders', '~> 2.0'

# slim html templating
gem 'slim-rails'

# bootstrap css/html lib
gem 'bootstrap-sass'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# app server
gem 'puma'

# delay processing ...I should be using sidekick or rescue but no time
gem 'delayed_job_active_record'
gem 'daemons'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # pry console & debugger
  gem 'pry'

  # rspec test lib
  gem 'rspec-rails'
  gem 'factory_girl_rails', require: false
  gem 'database_cleaner'
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem "spring-commands-rspec", group: :development

  # silence assets log
  gem 'quiet_assets'
end

