class DashboardController < ApplicationController
  before_action :authenticate_user!, raise: false
  def index
    @events = current_user.events
  end
end
