class SitesController < ApplicationController
  def index
    @parks = Park.where("designation !~* ?", 'National Park')
    render json: @parks.to_json()
  end

end
