require 'optparse'

module RepeatTest
  module Parser

    def self.parse(args)
      options = {}
      OptionParser.new do |opts|
        opts.banner = "Usage: repeat_test [options] files or directories"

        opts.on("-i", "--iterations [ITERATIONS]", Integer, "Number of iterations") do |iterations|
          options[:iterations] = iterations
        end
      end.parse!(args)

      options
    end
  end
end
