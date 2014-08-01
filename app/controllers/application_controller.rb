class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def logged_in?
    !!current_user
  end
  private
  def authenticate
    unless logged_in?
      flash[:error] = "Sorry, but you need to be logged in to access this bit"
      redirect_to login_url
    end
  end
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url , alert: "You shall not pass!"
  end
end