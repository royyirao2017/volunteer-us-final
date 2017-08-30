class VolunteerApplicationsController < ApplicationController

  def confirm
    @event = current_user.events.find(params[:event_id])
    @volunteer_application = @event.volunteer_applications.find(params[:id])
    @volunteer_application.accept!

    redirect_to event_path(@volunteer_application.event_id)
  end

  def decline
    @volunteer_application = VolunteerApplication.find_by(params[:id])
    @volunteer_application.decline!

    redirect_to event_path(@volunteer_application.event_id)
  end

end
