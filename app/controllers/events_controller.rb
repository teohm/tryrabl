class EventsController < ApplicationController
  def index
    user = User.find(params[:user_id])
    
    @events = Event.where(:creator_id => user.id)
  end

  def show
    @event = Event.where(
      :creator_id => params[:user_id],
      :id => params[:id]
    ).first
  end
end
