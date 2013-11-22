# -*- encoding : utf-8 -*-
class MapController < ApplicationController
  def show
  end

  def get_form
    render layout: false
  end

  def store
    @stink_report = StinkReport.new hours: params[:hours],
                                    seen_on: params[:date],
                                    hours: params[:hours],
                                    email: params[:email],
                                    lat: params[:lat],
                                    lng: params[:lng]
    if @stink_report.save
      flash[:notice] = 'Zgłoszenie przyjęte, czekaj na email z potwierdzeniem'
    else
    end
    render template: 'no_map'
  end
end
