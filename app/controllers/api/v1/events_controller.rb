class Api::V1::EventsController < Api::V1::BaseController
  # respond_to :json
  acts_as_token_authentication_handler_for User

  # before_action :set_user, only: [ :show ]

  # after_action :verify_authorized, except: [:index, :create]

  def index

    puts "index"
    puts "Event #{Event.all.inspect}"
    render :ok, json: Event.order(created_at: :desc)
  end

  def show
    @event = Event.find(params[:id])

    if application = VolunteerApplication.find_by(user: current_user, event: @event)
      render :ok, json: application
    else
      render :ok, json: @event
    end
  end

  def featured
    render :ok, json: Event.where(featured: true)
  end
end
