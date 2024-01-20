class EventsController < ApplicationController
  def index
    @event = Event.new
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path
    end
  end

private
  def event_params
    params.require(:event).permit(:title, :start, :end, :date )
  end
end
