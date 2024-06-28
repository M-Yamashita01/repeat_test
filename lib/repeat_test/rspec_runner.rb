# frozen_string_literal: true

module RepeatTest
  # RspecRunner class to run RSpec
  class RspecRunner
    def initialize(options:, files:)
      @options = options
      @files = files
    end

    def run
      system("bundle exec rspec #{files} #{options}")
    end
  end
end
