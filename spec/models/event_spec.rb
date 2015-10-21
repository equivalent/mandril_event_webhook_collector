require 'rails_helper'

RSpec.describe Event, type: :model do

  describe '.processed' do
    let!(:unproccessed) { create :event }
    let!(:processed)   { create :event, :processed }

    it do
      expect(described_class.processed).to match_array(processed)
    end
  end
end
