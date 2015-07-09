class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # skip_authorization_check
  # check_authorization
  # raise CanCan::AccessDenied.new("You are not authorized to perform this action!", :custom_action, Project)
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:warning] = exception.message
    redirect_to root_path
  end
  
  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end
 
  def redirect_back_or(path)
    redirect_to request.referer || path
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    
  end
  
  private
  def current_user
    User.new(session[:id])
  end
  helper_method :current_user
end
