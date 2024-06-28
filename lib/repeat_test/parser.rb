require "optparse"
require "optionparser"

module RepeatTest
  class Parser < RSpec::Core::Parser
    def self.parse(args)
      options = {}
      begin
        OptionParser.new do |opts|
          opts.banner = "Usage: repeat_test [options] files or directories"

          opts.on("-i", "--iterations [ITERATIONS]", Integer, "Number of iterations") do |iterations|
            options[:iterations] = iterations
          end

          opts.on("-f", "--files [FILES]", Array, "Files or directories to run") do |files|
            options[:files] = files
          end
        end.parse!(args)
      rescue OptionParser::InvalidOption => e
        # nothing
      end

      args.delete("-i")
      args.delete(options[:iterations].to_s)
      args.delete("-f")
      args.delete(options[:files])

      rspec_core_options = super(args)
      options.merge(rspec_core_options)
    end
  end
end
