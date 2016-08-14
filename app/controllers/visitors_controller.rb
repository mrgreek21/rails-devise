class VisitorsController < ApplicationController
  def index
    @num_users = User.count
    @num_events = Host.where(:user => current_user).count
  end
end
