class StudentsController < ApplicationController

  before_action :current_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def new
    @instructors = Instructor.all
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.valid?
      @student.save
      redirect_to @student.instructor
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
    end
  end

  def show
    
  end

  def edit 
    
    @instructors = Instructor.all
  end

  def update 
    @student.update(student_params)
    redirect_to @student
  end

  private

  def student_params
    params.require(:student).permit(:name, :major, :age, :instructor_id)
  end

  def current_student
    @student = Student.find(params[:id])
  end 
  
end
