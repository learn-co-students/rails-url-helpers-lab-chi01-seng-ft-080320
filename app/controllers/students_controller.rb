class StudentsController < ApplicationController
   before_action :set_student, only: [:show, :active]
  
  def index
    @students = Student.all
  end

  def show
      # @student = Student.find(params[:id])
      # render :show
  end

  def activate
     @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
    # redirect_to action: "show", id: @student.id
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end


end