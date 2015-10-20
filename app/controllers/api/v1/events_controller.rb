module Api
  module V1
    class EventsController < ActionController::Base
      respond_to :json

      def create
        @event = Event.create(event_params)
        respond_with @event, location: nil
      end

      private
        def event_params
          { raw: request.body.read }
        end
    end
  end
end
