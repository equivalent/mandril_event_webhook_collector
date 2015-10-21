class EventsController < ApplicationController
  respond_to :html

  def index
    @events = Event.processed
    @total_sends  = @events.sends.count
    @total_opens  = @events.opens.count
    @total_clicks = @events.clicks.count
  end
end
