# RepeatTest
The `RepeatTest` is responsible for performing repeated tests.
It provides methods to execute a test multiple times and display the results.
This class can be used to measure the performance or stability of a system under repeated testing.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec'
gem 'repeat_test'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rspec repeat_test

## Usage
```
# Default: Run all spec files once (i.e., those matching spec/**/*_spec.rb)
$ repeat_test

# Run all spec files twice (i.e., those matching spec/**/*_spec.rb)
$ repeat_test -i 2

# Run specified spec files twice
$ repeat_test -i 2 -f test_spec.rb test2_spec.rb

# Run specified spec directories twice
$ repeat_test -i 2 -f spec_dir
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/M-Yamashita01/repeat_test .

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
