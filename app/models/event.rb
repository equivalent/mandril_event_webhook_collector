class Event < ActiveRecord::Base
  def set_processed
    self.processed_at = Time.now
  end
end
