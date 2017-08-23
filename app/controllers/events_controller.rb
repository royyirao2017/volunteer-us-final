class EventsController < ApplicationController

  #this shows the list of volunteers for an event
  def show
  end

  def new
  end

  #this create a new event
  def create
  end

  #show the edit form
  def edit
  end

  #submit the edit form
  def update
    redirect_to dashboard_index_path
  end

  #this one can be seen by other people
  def publish
  end

  #you can delete the event
  def unpublish
  end

end
