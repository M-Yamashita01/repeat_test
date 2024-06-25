# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Parser do
  describe '#parse' do

    let(:args) { ['-i', '10', 'spec/repeat_test/parser_spec.rb:99'] }

    it 'returns a hash with the correct keys' do
      options = RepeatTest::Parser.parse(args)
      expect(options.keys).to eq([:iterations])
      expect(options[:iterations]).to eq(10)
    end
  end
end
