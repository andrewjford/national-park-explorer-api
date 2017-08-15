class VisitorcentersController < ApplicationController
  def index
    @visitorcenters = Visitorcenter.of_park(params[:parkCode])
    render json: @visitorcenters.to_json()
  end

  def show
    @park = Park.find(params[:id])
    render json: @park.to_json()
  end

end
