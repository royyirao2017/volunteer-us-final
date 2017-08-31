class ProfilesController < ApplicationController

  def show
    @profile = current_user
  end

  def update
    @profile = current_user
    if @profile.update(profile_params)
      redirect_to dashboard_index_path, notice: 'Profile updated'
    else
      render :show
    end
  end

  private

  def profile_params
    params.require(:user).permit(:name, :first_name, :last_name, :phone_number, :location)

  end

end
