require 'rails_helper'

RSpec.describe ProcessEventJob, type: :job do
  describe '#perform' do
    let(:event)     { double :dummy_event }
    let(:raw_input) { 'some string' }
    let(:processor) { instance_spy EventProcessor }

    it 'should run EventProcessor#process' do
      expect(EventProcessor)
        .to receive(:new)
        .with(event: event, raw_input: raw_input)
        .and_return(processor)

      subject.perform(event: event, raw_input: raw_input)

      expect(processor).to have_received(:process)
    end
  end
end
