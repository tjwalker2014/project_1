class CoursesController < ApplicationController
  before_filter :authenticate, except: [:index, :show]
  load_and_authorize_resource

  def index
    @courses = Course.all
    #binding.pry
  end

  def show
    @course = Course.find(params[:id])
    @instructors = @course.users.where(role: 'instructor')
    @students = @course.users.where(role: 'student')
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      redirect_to @course, :notice => "Successfully created course."
    else
      @course.change_error_messages
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
      @course.change_error_messages
      render :action => 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_url, :notice => "Successfully deleted course."
  end
end
