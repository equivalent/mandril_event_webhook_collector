require 'rails_helper'

RSpec.describe EventProcessor do
  subject { described_class.new(raw_input: raw_input, event: event) }
  let(:raw_input) { ExampleFiles.json_example('valid_mandril_event') }

  describe "#save_raw" do
    let(:trigger) { subject.save_raw }
    let(:event) { Event.new }

    it 'should create new Event and store raw data' do
      expect { trigger }
        .to change { Event.count }
        .by(1)

      expect(Event.last.raw).to eq(raw_input)
    end
  end

  describe "#process" do
    let(:event) { create :event }

    before do
      subject.process
    end

    it do
      expect(event.processed_at)
        .to be_within(1.minute)
        .of(Time.now)
    end

    it do
      expect(event.address).to eq 'barney@lostmy.name'
    end

    it do
      expect(event.email_type).to eq 'Shipment'
    end

    it do
      expect(event.action).to eq 'send'
    end

    it do
      expect(event.occured_at).to eq Time.parse '2015-05-28 14:44:56 +0100'
    end
  end
end
