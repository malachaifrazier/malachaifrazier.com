source "https://rubygems.org"

ruby "3.4.5"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.1.1"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

gem "pg"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 7.1.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Use Tailwind CSS [https://github.com/rails/tailwindcss-rails]
# If you are upgrading to tailwindcss-rails 4.x, please read the upgrade guide at:
#   https://github.com/rails/tailwindcss-rails/blob/main/README.md#upgrading-your-application-from-tailwind-v3-to-v4
  gem "tailwindcss-rails", "~> 3.3.1"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
 gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"
gem "aws-sdk-s3", require: false

gem "redcarpet"

# Simple, powerful, first-party analytics for Rails: https://github.com/ankane/
gem "ahoy_matey"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]
  gem "dotenv-rails"
  gem "pry-rails"
  # rails generate rspec:install, rails generate rspec:model user
  gem "rspec-rails", "~> 8.0.2"
  gem "factory_bot_rails"
  gem "faker"
  gem "simplecov", require: false

end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]

  gem "hotwire-livereload"
  gem "better_errors"
  gem "binding_of_caller"
  # Open "sent" e-mails in your browser instead of actually sending them
  # https://github.com/ryanb/letter_opener
  gem "letter_opener"
  gem "dockerfile-rails", ">= 1.7.10"

end

group :test do
  gem "shoulda-matchers"
end