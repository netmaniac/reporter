# -*- encoding : utf-8 -*-
class ReportsController < ApplicationController
  layout 'no_map'

  def show
    @report = Report.find(params[:id])
    redirect_to '/' unless @report.token == params[:token]
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])
  end

  def new
    session[:report_token] = SecureRandom.hex(22)
    @report = Report.new
    render layout: false
  end

  def create
    @report = Report.new(report_params.merge(session_token: session[:report_token], token: SecureRandom.hex(30) ) )
    if @report.save
      redirect_to report_path(@report, token: @report.token)
    else
      render action: 'new'
    end
  end
 private
  def report_params
    params.require(:report).permit(:email, :lat, :lng, :hours, :seen_on )
  end
end
