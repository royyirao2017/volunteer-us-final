class Api::V1::ProfilesController < Api::V1::BaseController

  def show
    render json: current_user
  end

  # def show
  #   @
  # end
end
