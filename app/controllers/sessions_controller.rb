class SessionsController < ApplicationController
  
  def new 
  end

  def create 
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
     session[:user_id] = user.id
     redirect_to root_path, notice: "You are logged in"
    else
     flash.now.alert = "Looks like your login details weren't quite right. Please try again or get in touch if you've forgotten your password"
     render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
  end
  
end