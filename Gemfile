# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in repeat_test.gemspec
gemspec

gem "rake", "~> 13.0"

gem "rspec-core", "~> 3.0"

group :development, :test do
  gem "debug"
  gem "rspec", "~> 3.0"
  gem "rubocop", "~> 1.7"

  path = File.expand_path(__dir__)
  $LOAD_PATH.unshift(path) unless $LOAD_PATH.include?(path)
end
