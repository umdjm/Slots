class CoursesController < ApplicationController
  before_filter :authorize

  def index
    @courses = @current_user.courses
  end

  def show
    @course = @current_user.courses.find(params[:id])
  end

  def new
    @course = @current_user.courses.build
  end

  def create
    @course = @current_user.courses.build(params[:course])
    if @course.save
      redirect_to @course, :notice => "Successfully created course."
    else
      render :action => 'new'
    end
  end

  def edit
    @course = @current_user.courses.find(params[:id])
  end

  def update
    @course = @current_user.courses.find(params[:id])
    if @course.update_attributes(params[:course])
      redirect_to @course, :notice  => "Successfully updated course."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @course = @current_user.courses.find(params[:id])
    @course.destroy
    redirect_to courses_url, :notice => "Successfully destroyed course."
  end
end
