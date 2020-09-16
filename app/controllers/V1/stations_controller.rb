class V1::StationsController < ApplicationController
  def search_by_position
    @stations = Station.by_distance(:origin => [params[:longitude],params[:latitude]])
    error = "No station found..." if @stations.blank?
    render json: { stations: @stations.get_nearest(3), error: error }
  end
end