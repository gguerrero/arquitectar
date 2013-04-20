source 'https://rubygems.org'

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.beta1'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'bluecloth', '>= 2.0.0'

gem 'jquery-rails'

# Kwicks Sexy Slide Panels
gem 'jquery_kwicks_rails', 
    git: "git://github.com/gguerrero/jquery_kwicks_rails.git"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

# Global Recognized Avatar
gem 'gravatar_image_tag'

# Active Record Pagination
gem 'will_paginate'

group :development do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'faker'
  gem 'pry'
  gem 'hirb'
  gem 'meta_request'
end

group :test do
  gem 'rspec-rails'
  gem 'webrat'
  gem 'spork'
  gem 'spork-rails', git: 'git://github.com/koriroys/spork-rails.git'
  gem 'factory_girl_rails'
end

group :production do
  gem 'pg'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'