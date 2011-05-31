class GuestsController < ApplicationController
  def index
    event = Event.where(
      :creator_id => params[:user_id],
      :id => params[:event_id]
    ).first

    @guests = EventGuest.where(:event_id => event.id)
  end
end
