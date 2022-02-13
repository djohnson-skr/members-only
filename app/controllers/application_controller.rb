class ApplicationController < ActionController::Base

  # adding in additional parameter to be permitted called username
  # see devise ReadMe.md for more details
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
