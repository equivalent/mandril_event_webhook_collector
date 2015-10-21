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

  def process
    set_mandril_attributes(json)
    event.set_processed
    event.save
  end

  private
    def json
      JSON.parse(raw_input)
    end

    def set_mandril_attributes(json)
      event.address = json.fetch("Address")
      event.email_type = json.fetch("EmailType")
      event.action = json.fetch("Event")
      event.occured_at = mandril_time_convertor(json.fetch("Timestamp"))
    end

    def mandril_time_convertor(timestamp)
      Time.at(timestamp)
    end
end
