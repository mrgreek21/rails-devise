class SeatingPlansController < ApplicationController
  def index
  end

  def new
    @event = Event.find(params[:event_id])
  	@seating_plan = SeatingPlan.new
  end

  def create
  	@seating_plan = SeatingPlan.new(seating_plan_params)
    if @seating_plan.save!
      params[:num_tables].to_i.times {Table.create(:seating_plan => @seating_plan)}

      redirect_to :controller => 'events', :action => 'show', :id => seating_plan_params[:event_id]
    else
      redirect_to :controller => 'seating_plans', :action => 'new'
    end
  end

  def show
  end
end

private
def seating_plan_params
  params.require(:seating_plan).permit(:event_id)
end