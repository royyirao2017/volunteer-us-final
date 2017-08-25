class DashboardController < ApplicationController
  before_action :authenticate_user!, raise: false
  def index
    @events = Event.all
  end

end
