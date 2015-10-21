class EventProcessor
  InvalidFormat = Class.new(StandardError)

  attr_reader :raw_input, :event

  def initialize(raw_input:, event:)
    @raw_input = raw_input
    @event     = event
  end

  def save_raw
    event.raw = raw_input
    event.save
  end

end
