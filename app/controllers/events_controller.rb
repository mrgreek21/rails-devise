class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = (Host.where user: current_user).map{ |host| host.event }
  end

  def show
    @event = Event.find(params[:id])
    unless @event.host.user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @host = Host.create(:user => current_user)
    @event.host = @host
    
    if @event.save!
      redirect_to :controller => 'events', :action => 'index'
    else
      redirect_to :controller => 'events', :action => 'new'
    end
  end
end

private
def event_params
  params.require(:event).permit(:name)
end
