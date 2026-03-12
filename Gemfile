source "https://rubygems.org"

# Rails framework
gem "rails", "~> 8.1.2"

# Modern asset pipeline
gem "propshaft"

# Database
gem "pg", "~> 1.1"

# Web server
gem "puma", ">= 5.0"

# JavaScript / Hotwire
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# JSON APIs
gem "jbuilder"

# Shopify app helper (latest v23)
gem "shopify_app", "~> 23.0"

# Timezone data for Windows / JRuby
gem "tzinfo-data", platforms: %i[windows jruby]

# Rails adapters for caching, job queues, Action Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Boot speed optimization
gem "bootsnap", require: false

# Docker deployment
gem "kamal", require: false

# HTTP caching/compression for Puma
gem "thruster", require: false

# Image processing
gem "image_processing", "~> 1.2"

# Development and test tools
group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end