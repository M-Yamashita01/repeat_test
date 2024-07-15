# frozen_string_literal: true

require "spec_helper"

RSpec.describe RepeatTest::CLI do
  describe "#run" do
    let(:args) { ["-i", "10", "-f", "spec/repeat_test/parser_spec.rb"] }
    let(:cli) { spy(RepeatTest::CLI) }
    let(:runner_double) { double(RepeatTest::RspecRunner) }

    before do
      allow(RepeatTest::RspecRunner).to receive(:new).and_return(runner_double)
      allow(runner_double).to receive(:run)
    end

    it "runs the iterations" do
      expect(runner_double).to receive(:run).exactly(10).times
      described_class.new(args).run
    end

    context "when no iterations are provided" do
      let(:args) { ["-f", "spec/repeat_test/parser_spec.rb"] }

      it "runs one iteration" do
        expect(runner_double).to receive(:run).once
        described_class.new(args).run
      end
    end
  end
end
