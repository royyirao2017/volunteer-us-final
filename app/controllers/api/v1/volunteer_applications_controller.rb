# volunteer_applications_controller.rb

class Api::V1::VolunteerApplicationsController < Api::V1::BaseController

  respond_to :json
  acts_as_token_authentication_handler_for User

  def create
    # Creates a new volunteer application
    # event
    @volunteer_applicaton = VolunteerApplication.new(volunteer_application_params)

    if VolunteerApplication.exists?(user: current_user, event_id: params[:event_id])
      puts "You're already applied to this event"
    else
      @volunteer_applicaton.user = current_user
      @volunteer_applicaton.save!
    end

    # Status defaults to "Pending"

    # Adds event instance to Volunteer dashboard, with status

    render json: @volunteer_applicaton
  end

  def index
    @events = VolunteerApplication.where(user: current_user)#.map(&:event)
    render json: @events # event.to_json # event.as_json
  end

  private

  def volunteer_application_params
    # These params are required to create an event in event/new view
    params.delete(:format)
    params.permit(:status, :user, :event, :code, :event_id)
  end
end
