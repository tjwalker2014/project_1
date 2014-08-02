class UsersController < ApplicationController
  before_filter :authenticate, except: [:new, :create]
  load_and_authorize_resource
  
  def index
    @search = User.search(params[:q])
    @users = @search.result
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user, :notice => "Successfully created user."
    else
      @user.change_error_messages
      render :action => 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user, :notice  => "Successfully updated user."
    else
      @user.change_error_messages
      render :action => 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to campuses_url, :notice => "Successfully deleted user."
  end

end
