source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# gem 'active_model_serializers'
# gem 'active_model_serializers',
# 	git: 'git@github.com:rails-api/active_model_serializers.git'

gem 'active_model_serializers', git: 'git@github.com:rails-api/active_model_serializers.git',
branch: '0-8-stable'

gem 'devise'
gem 'kaminari'
gem 'delayed_job_active_record'

# Gems required for sabisu_rails gem
gem 'sabisu_rails', github: "IcaliaLabs/sabisu-rails"
gem 'compass-rails', github: "Compass/compass-rails", branch: "master"
gem 'furatto'
gem 'font-awesome-rails'
gem 'simple_form'

group :development, :test do
	gem 'sqlite3'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rspec-rails'
	gem "factory_girl_rails"
	gem "ffaker"
end

group :test do
	gem "shoulda-matchers"
	gem "email_spec"
	gem 'guard'
	gem 'guard-rspec'
	gem 'terminal-notifier-guard'
end

