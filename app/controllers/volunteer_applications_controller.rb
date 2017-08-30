class VolunteerApplicationsController < ApplicationController

  def confirm
    @event = current_user.events.find(params[:event_id])
    @volunteer_application = @event.volunteer_applications.find(params[:volunteer_application_id])
    @volunteer_application.accept!

    redirect_to event_path(@volunteer_application.event_id)
  end

  def decline
    @event = current_user.events.find(params[:event_id])
    @volunteer_application = @event.volunteer_applications.find(params[:volunteer_application_id])
    @volunteer_application.decline!

    redirect_to event_path(@volunteer_application.event_id)
  end

end
