class StudentsController < ApplicationController
  def new
    @student = Student.new(:course_id => params[:course_id])
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      flash[:notice] = "Successfully created student."
      redirect_to @student.course
    else
      render :action => 'new'
    end
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
    flash[:notice] = "Successfully destroyed student."
    redirect_to @student.course
  end
end