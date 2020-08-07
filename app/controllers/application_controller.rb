class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!, except: %i[welcome]

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :email, :password, :password_confirmation)
    end
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || user_path(current_user)
  end

  def after_sign_out_path_for(resource)
    stored_location_for(resource) || root_path
  end

  def signed_in_root_path(resource)
    user_path(current_user)
  end
end
