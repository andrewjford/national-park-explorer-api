class ParksController < ApplicationController
  def index
    @parks = Park.where("designation ~* ?", 'National Park')
    render json: @parks.to_json()
  end

  def show
    @park = Park.find(params[:id])
    render json: @park.to_json()
  end

end
