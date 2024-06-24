
module RepeatTest
  class ConfigurationOptions
    attr_accessor :options

    def initialize(args)
      @args = args
      organize_options
    end

    private

    def organize_options
      @options ||= Parser.parse(@args)
    end
  end
end
