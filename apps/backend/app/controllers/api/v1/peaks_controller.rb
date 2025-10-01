class Api::V1::PeaksController < ApplicationController
    def index
        peaks = Peak.all 
        render json: peaks
    end 
    
    def show 
        peak = Peak.find(params[:id])
        render json: peak 
    rescue ActiveRecord::RecordNotFound
        render json: { error: 'peak not found'}, status: :not_found
    end 
end
