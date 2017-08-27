# volunteer_applications_controller.rb

class Api::V1::VolunteerApplicationsController < Api::V1::BaseController

  respond_to :json
  acts_as_token_authentication_handler_for User

  def create
    # Creates a new volunteer application

    @volunteer_applicaton = VolunteerApplication.new(volunteer_application_params)
    @volunteer_applicaton.user = current_user
    @volunteer_applicaton.save!

    # Status defaults to "Pending"
    # Adds event instance to Volunteer dashboard, with status

    # Adds volunteer profile to event organizer dashboard

    render json: @volunteer_applicaton
  end

  def index
    @events = VolunteerApplication.where(@user == current_user).map(&:event)
    render json: @events
  end

  private

  def volunteer_application_params
    # These params are required to create an event in event/new view
    params.delete(:format)
    params.permit(:status, :user, :event, :code, :event_id)
  end
end
