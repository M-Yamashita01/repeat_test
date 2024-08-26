# frozen_string_literal: true

require "spec_helper"

RSpec.describe Parser do
  describe "#parse" do
    let(:args) do
      ["-i", "10", "-f", "spec/repeat_test/parser_spec.rb:99", "--format", "documentation", "--seed", "1000"]
    end

    it "parses the iterations option" do
      options = RepeatTest::Parser.parse(args)
      expect(options[:iterations]).to eq(10)
    end

    it "parses the files option" do
      options = RepeatTest::Parser.parse(args)
      expect(options[:files]).to eq(["spec/repeat_test/parser_spec.rb:99"])
    end

    it "parses the files or directories to run" do
      options = RepeatTest::Parser.parse(args)
      expect(options[:files_or_directories_to_run]).to eq(["documentation"])
    end

    it "parses the seed option" do
      options = RepeatTest::Parser.parse(args)
      expect(options[:order]).to eq("rand:1000")
    end

    context "when no iterations are provided" do
      let(:args) do
        ["-f", "spec/repeat_test/parser_spec.rb:99", "--format", "documentation", "--seed", "1000"]
      end

      it "defaults to 1 iteration" do
        options = RepeatTest::Parser.parse(args)
        expect(options[:iterations]).to eq(1)
      end
    end

    context "when no files are provided" do
      let(:args) do
        ["-i", "10", "--format", "documentation", "--seed", "1000"]
      end

      it "defaults to spec" do
        options = RepeatTest::Parser.parse(args)
        expect(options[:files]).to eq(["spec"])
      end
    end
  end
end
