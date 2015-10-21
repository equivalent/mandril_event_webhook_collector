require 'rails_helper'

RSpec.describe Event, type: :model do

  describe '.processed' do
    let!(:unproccessed) { create :event }
    let!(:processed)   { create :event, :processed }

    it do
      expect(described_class.processed).to match_array(processed)
    end
  end

  describe '.with_type' do
    let!(:event_type1) { create :event, email_type: 'Foo' }
    let!(:event_type2) { create :event, email_type: 'Bar' }

    it do
      expect(described_class.with_type('Foo')).to match_array(event_type1)
    end
  end


end
