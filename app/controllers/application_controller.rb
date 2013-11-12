class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit :email, :password, :password_confirmation
    end
    devise_parameter_sanitizer.for(:sign_in) do |u|
      u.permit :email, :password
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit :email, :current_password, :password, :password_confirmation, :name, :avatar
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
