class StudentsController < ApplicationController
  def create
    @student = Student.new(student_params)
    Report.generate_new_reports(@student)
    
    if @student.save
      redirect_to student_url(@student)
    else
      flash[:errors] = @student.errors.full_messages
      render :new
    end
  end
  
  def destroy
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def index
    @students = Student.all
  end
  
  def new
    @student = Student.new
    render :new
  end
  
  def show
    @student = Student.find(params[:id])
    @reports = @student.reports
  end
  
  def update
  end
  
  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email)
    end
  
end
