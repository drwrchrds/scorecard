class ReportsController < ApplicationController
  def new
  end
  
  def index
    @reports = Report.all
  end
  
  def show
    @report = Report.find(params[:id])
    @student = @report.student
  end
  
end
