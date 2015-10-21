class Event < ActiveRecord::Base
  scope :processed, ->{ where.not(processed_at: nil) }

  scope :sends,  ->{ where(action: 'send') }
  scope :clicks, ->{ where(action: 'click') }
  scope :opens,  ->{ where(action: 'open') }

  scope :with_type, ->(email_type){ where(email_type: email_type) }

  def self.email_types
    Event.pluck(:email_type).uniq.compact
  end

  def set_processed
    self.processed_at = Time.now
  end
end
