# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Parser do
  describe '#parse' do

    let(:args) { ['-i', '10', '-f', 'spec/repeat_test/parser_spec.rb:99'] }

    it 'parses the iterations option' do
      options = RepeatTest::Parser.parse(args)
      expect(options[:iterations]).to eq(10)
    end

    it 'parses the files option' do
      options = RepeatTest::Parser.parse(args)
      expect(options[:files]).to eq(['spec/repeat_test/parser_spec.rb:99'])
    end
  end
end
