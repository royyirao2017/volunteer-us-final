class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  # def after_sign_in_path_for(resource_or_scope)
  #   dashboard_index_path
  # end

  # private

  # If your model is called User
  def after_sign_in_path_for(resource)
    p Thread.current[:event_params]

    if Thread.current[:event_params].present?

      # save list
      @event = current_user.events.create!(Thread.current[:event_params])

      # clear session
      # session[:event] = nil
      Thread.current[:event_params] = nil

      dashboard_index_path(@event)
    else
      dashboard_index_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end
end
