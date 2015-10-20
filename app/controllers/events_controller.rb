class EventsController < ApplicationController
  respond_to :html

  def index
    @events = Event.all
  end

end
