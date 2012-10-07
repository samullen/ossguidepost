source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg', "~> 0.14.0"

gem 'devise', "~> 2.1.2"
gem 'simple_form', '~> 2.0.2'
gem 'omniauth-github', '~> 1.0.3'

gem 'octokit', '~> 1.13.0'
gem "texticle", "~> 2.0.3", :require => 'texticle/rails'
gem "kaminari", "~> 0.14.1"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development, :test do
  gem 'rspec-rails', '~> 2.11.0'
  gem 'factory_girl_rails', '~> 4.0.0'
end

group :test do
  gem "spin", "~> 0.4.5"
  gem "guard-spin", "~> 0.3.0"
  gem "database_cleaner"
  gem "cucumber-rails", "~> 1.3.0"
  gem "fakeweb"
  gem "rb-fsevent"
  gem 'shoulda-matchers'
  gem "launchy", "~> 2.1.2"
  gem 'simplecov', "~> 0.6.4", :require => false
end
