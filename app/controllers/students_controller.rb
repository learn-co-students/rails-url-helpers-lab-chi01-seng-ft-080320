class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student.active = !@student.active
    @student.save
  end
  
  #executes activate action twice

  private

  #not accessable buy the user 
  
  def set_student
    @student = Student.find(params[:id])
  end

end