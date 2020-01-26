class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
 
<<<<<<< HEAD
 helper_method :current_user,:logged_in?
=======
  helper_method :current_user,:logged_in?
>>>>>>> origin/master
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
