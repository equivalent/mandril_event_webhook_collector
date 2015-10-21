class ProcessEventJob < ActiveJob::Base
  queue_as :default

  def perform(event: , raw_input:)
    EventProcessor
      .new(event: event, raw_input: raw_input)
      .process
  end
end
