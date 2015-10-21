require 'rails_helper'

RSpec.describe EventProcessor do
  let(:raw_input) { ExampleFiles.json_example('valid_mandril_event') }

  describe "#save_raw" do
    subject { described_class.new(raw_input: raw_input, event: event) }
    let(:trigger) { subject.save_raw }

    let(:event) { Event.new }

    it 'should create new Event and store raw data' do
      expect { trigger }
        .to change { Event.count }
        .by(1)

      expect(Event.last.raw).to eq(raw_input)
    end
  end
end
