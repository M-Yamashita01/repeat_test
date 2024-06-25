# frozen_string_literal: true

module RepeatTest
  class CLI
    def self.run
      new(ARGV).run
    end

    def initialize(args)
      @args = args
    end

    def run
      configuration_options = ConfigurationOptions.new(@args)
      options = configuration_options.options

      files = options[:files].join(' ')
      options[:iterations].to_i.times do |i|
        puts "Running RSpec iteration ##{i + 1}"

        run_rspec_command(files)
      end
    end

    def run_rspec_command(files)
      system("bundle exec rspec #{files}")
    end
  end
end
