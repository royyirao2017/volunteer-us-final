class EventsController < ApplicationController

  #this shows the list of volunteers for an event
  def index
    @events = Event.all
  end


  def show
    @event = Event.find(params[:id])

    if user_signed_in?
      @user_confirmed = @event.volunteer_applications.where("user_id = ? AND confirmed = ?", current_user.id, true)
      @user_registered = current_user.volunteer_applications.find_by(event_id: @event.id)
    end
  end

  def new
    @event = Event.new
  end

  #this create a new event
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save

      puts "save @event #{@event.errors.inspect}"

      redirect_to dashboard_index_path(@event)
    else

      puts "failed @event #{@event.errors.inspect}"
      render :new
    end
  end

  #show the edit form
  def edit

    @event = Event.find(params[:id])
  end

  #submit the edit form
  def update
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end

  end

  #this one can be seen by other people
  def publish
  end

  #you can delete the event
  def unpublish
  end

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
    params.require(:event).permit(:title, :date, :location, :category, :volunteer_number)
  end

end
