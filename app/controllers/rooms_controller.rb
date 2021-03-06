class RoomsController < ApplicationController
  before_filter :authenticate, except: [:index, :show]
  load_and_authorize_resource
  
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params[:room])
    if @room.save
      redirect_to rooms_path, :notice => "Successfully created room."
    else
      @room.change_error_messages
      render :action => 'new'
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update_attributes(params[:room])
      redirect_to @room, :notice  => "Successfully updated room."
    else
      @room.change_error_messages
      render :action => 'edit'
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to campuses_url, :notice => "Successfully deleted room."
  end
end
