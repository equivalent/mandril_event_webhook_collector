module Api
  module V1
    class EventsController < ActionController::Base
      respond_to :json

      def create
        @event = Event.new

        EventProcessor
          .new(raw_input: raw_mandril_input, event: @event )
          .tap { |ep| ep.save_raw }

        respond_with @event, location: nil, status: :ok
      end

      private
        def raw_mandril_input
          request.body.read
        end
    end
  end
end
