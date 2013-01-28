class StudentsController < ApplicationController
  
  before_filter :authorize


  def new
    @student = Student.new(:course_id => params[:course_id])
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(params[:student])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      flash[:notice] = "Successfully updated student."
      redirect_to @student.course
    else
      render :action => 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:notice] = "Successfully removed student."
    redirect_to @student.course
  end
end