# frozen_string_literal: true

module RepeatTest
  # CLI class to run the command line interface
  class CLI
    def self.run(args)
      new(args).run
    end

    def initialize(args)
      @args = args
    end

    def run
      configuration_options = ConfigurationOptions.new(@args)
      options = configuration_options.options

      files = options[:files].join(" ")
      runner = RspecRunner.new(options:, files:)
      options[:iterations].to_i.times do |i|
        puts "Running RSpec iteration ##{i + 1}"

        runner.run
      end
    end
  end
end
