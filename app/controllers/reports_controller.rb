# -*- encoding : utf-8 -*-
class ReportsController < ApplicationController
  def show
  end

  def edit
  end

  def update
  end

  def new
    @report = Report.new
    render layout: false
  end

  def create
  end
end
