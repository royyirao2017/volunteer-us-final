class VolunteerApplicationsController < ApplicationController

  def confirm
    redirect_to event_path(id: 1)
  end

  def pending
    redirect_to event_path(id: 1)
  end

  def decline
    redirect_to event_path(id: 1)
  end

end
