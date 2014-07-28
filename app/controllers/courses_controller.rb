class CoursesController < ApplicationController
  before_filter :authenticate, except: [:index, :show]
  
  def index
    @campuses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      redirect_to @course, :notice => "Successfully created course."
    else
      render :action => 'new'
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(params[:course])
      redirect_to @course, :notice  => "Successfully updated course."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to campuses_url, :notice => "Successfully deleted course."
  end
end
