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
    if params.rating <=5 && params.rating > 0
      @park.add_rating(params.rating)
    end
    
  end

  private

  def update_params
    params.permit(:rating)
  end
end
