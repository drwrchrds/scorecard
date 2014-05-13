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
end
