class ParksController < ApplicationController
  def index
    @parks = Park.where("designation ~* ?", 'National Park')
    render json: @parks.to_json()
  end

  def show
    @park = Park.find(params[:id])
    render json: @park.to_json()
  end

  def update
    @park = Park.find(params[:id])
    #get current rating and total number of ratings
    if update_params[:rating].to_i <= 5 && update_params[:rating].to_i > 0
      @park.add_rating(update_params[:rating].to_i)
      render json: @park
    end
  end

  private

  def update_params
    params.permit(:id, :rating)
  end
end
