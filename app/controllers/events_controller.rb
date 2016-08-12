class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    unless @event.host.user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  def new
  end

  def create
  end
end
