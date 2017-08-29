class Api::V1::EventsController < Api::V1::BaseController
  # respond_to :json
  acts_as_token_authentication_handler_for User

  # before_action :set_user, only: [ :show ]

  # after_action :verify_authorized, except: [:index, :create]

  def index

    puts "index"
    puts "Event #{Event.all.inspect}"
    render :ok, json: Event.all
  end

  def show
    @event = Event.find(params[:id])
    render :ok, json: @event
  end

  def featured
    render :ok, json: Event.where(featured: true)
  end
end
