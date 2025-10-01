class PeaksController < ApplicationController
  def index
    peaks = Peak.order(elevation: :desc)
    render json: peaks
  end

  def show
    peak = Peak.find(params[:id])
    render json: peak 
  end
end
