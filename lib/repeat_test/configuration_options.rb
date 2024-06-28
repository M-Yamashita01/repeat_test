# frozen_string_literal: true

module RepeatTest
  # ConfigurationOptions class
  class ConfigurationOptions
    attr_accessor :options

    def initialize(args)
      @args = args
      organize_options
    end

    private

    def organize_options
      @options ||= Parser.parse(@args)
    rescue OptionParser::InvalidOption
      abort "Please use --help for a listing of valid options"
    end
  end
end
