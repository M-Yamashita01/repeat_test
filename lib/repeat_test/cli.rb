# frozen_string_literal: true

module RepeatTest
  class CLI
    def self.run
      files = ARGV
      5.times do |i|
        puts "Running RSpec iteration ##{i + 1}"

        system("bundle exec rspec #{files.join(' ')}")
      end
    end
  end
end
