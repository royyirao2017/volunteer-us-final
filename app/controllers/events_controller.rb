class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  #this shows the list of volunteers for an event
  # def index
  #   @events = Event.all
  # end


  def show
    @volunteer_applications = @event.volunteer_applications
  end

  def new
    if current_user
      @event = Event.new
    else
      redirect_to new_user_registration_path
    end
    # @event.title ||= params[:title]
  end

  #this create a new event
  def create
    @event = Event.new(event_params)
    @event.user = current_user

    # Check to see if the user is registered/logged in
    if current_user.nil?
     # Store the form data in the session so we can retrieve it after login
     Thread.current[:event_params] = event_params.dup
     p Thread.current[:event_params]

     # Redirect the user to register/login
     redirect_to new_user_registration_path
    else
      if @event.save

        puts "save @event #{@event.errors.inspect}"

        redirect_to dashboard_index_path(@event)
      else

        puts "failed @event #{@event.errors.inspect}"

        render :new
      end
    end
  end

  #show the edit form
  def edit
     @event = Event.find(params[:id])
  end

  #submit the edit form
  def update
    @event = Event.find(params[:id])
    @event.user = current_user
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end

  end

  # #this one can be seen by other people
  # def publish
  # end

  # #you can delete the event
  # def unpublish
  # end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to dashboard_index_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    # These params are required to create an event in event/new view
    params.require(:event).permit(:title, :date, :poster, :location, :category, :volunteer_number, :volunteer_perks, :volunteer_duties, :featured, :description)
  end

end
