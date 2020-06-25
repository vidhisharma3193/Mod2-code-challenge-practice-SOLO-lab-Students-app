class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create


    student = Student.new(student_params)
    if student.valid?
      student.save
      redirect_to "/instructors/#{student.instructor.id}"
    else
      # byebug
      flash[:errors] = student.errors.full_messages
      redirect_to "/students/new"
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end


  def update
    @student = Student.find(params[:id])
    @student.assign_attributes(student_params)
    if @student.valid?
      @student.save
      redirect_to "/students/#{@student.id}"
    else
      # byebug
      flash[:errors] = @student.errors.full_messages
      redirect_to "/students/#{@student.id}/edit"
    end
  end
  
  private

  def student_params
    params.require(:student).permit(:name, :major, :instructor_id, :age)
  end
end
