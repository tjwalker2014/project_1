class CampusesController < ApplicationController
  before_filter :authenticate, except: [:index, :show]
  
  def index
    @campuses = Campus.all
  end

  def show
    @campus = Campus.find(params[:id])
    @instructors = @campus.users.where(role: 'instructor')
    @students = @campus.users.where(role: 'student')
  end

  def new
    @campus = Campus.new
  end

  def create
    @campus = Campus.new(params[:campus])
    
    if @campus.save
      redirect_to campuses_url, :notice => "Successfully created campus."
    else
      @campus.change_error_messages
      render :action => 'new'
    end
  end

  def edit
    @campus = Campus.find(params[:id])
  end

  def update
    @campus = Campus.find(params[:id])
    if @campus.update_attributes(params[:campus])
      redirect_to @campus, :notice  => "Successfully updated campus."
    else
      @campus.change_error_messages
      render :action => 'edit'
    end
  end

  def destroy
    @campus = Campus.find(params[:id])
    @campus.destroy
    redirect_to campuses_url, :notice => "Successfully deleted campus."
  end
end
