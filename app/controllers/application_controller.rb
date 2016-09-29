class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #call configured params
  before_action :configure_permitted_paramaters, if: :devise_controller?
  
  
  # protect database using strong parameters
  protected
  def configure_permitted_paramaters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :surname, :email, :password, :password_confirmation, :remember_me, :role, :admin])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:password, :password_confirmation, :remember_me])
      devise_parameter_sanitizer.permit(:account_update, keys: [:role, :password, :password_confirmation, :remember_me, :admin])
  end
end
