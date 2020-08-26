class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    render :index
  end

  def show
    @student = Student.find(params[:id])
    # @student = @student.active
    render :show
  end

  def activate
    
    @student = Student.find(params[:id])

    # @student.active = !@student.active
    if @student.active
      @student.update(active: false)
    else
      @student.update(active: true)
    end

    redirect_to student_path(@student) # get /students/:id
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end