source 'https://rubygems.org'

group :default do
  gem 'rails', '~> 3.2'
  gem 'surveyor', :git => 'https://github.com/jfoy/surveyor.git'
  gem 'pg'
  gem 'jquery-rails'
  gem 'bcrypt-ruby', '~> 3.0' # To use ActiveModel has_secure_password
  gem 'unicorn'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass', '~> 3.2'
  gem 'sass-rails', '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'debugger'
  gem 'foreman'
  gem 'heroku'
end

group :test do
  gem 'cucumber'
  gem 'rspec'
end
