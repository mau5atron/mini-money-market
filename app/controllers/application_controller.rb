class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  	dashboard_path
  end

  def after_sign_up_path_for(resource)
  	pages_login_path
  end

 	before_action :configure_permitted_parameters, if: :devise_controller?

  protected 

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email ,:phone, :street, :city, :state, :zip])
  end
end
