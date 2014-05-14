class ReportsController < ApplicationController
  
  def index
    @reports = Report.all
  end
  
  def show
    @report = Report.find(params[:id])
    @student = @report.student
  end
  
  def edit
    @report = Report.find(params[:id])
    @student = @report.student
  end
  
  def update
    @report = Report.find(params[:id])
    @report.pair = Student.find(params[:report][:pair_id])
    
    if @report.update_attributes(report_params)
      redirect_to student_report_url(@report.student, @report)
    else
      flash[:errors] = @report.errors.full_messages
      render :edit
    end
  end
  
  private
  
  def report_params
    params.require(:report).permit(:day, :finished_exercises, :read_solutions, :read_readings, :material_rating, :good_concept, :bad_concept, :pair_rating, :pair_comments, :comments)
  end
end
