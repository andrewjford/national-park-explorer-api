class NpsparksController < ApplicationController

  def show
    parkCode = Park.find(params[:id]).parkCode
    nps_service = NpsService.new

    park = nps_service.getPark(parkCode)
    
    if park["id"]
      # if we are using local db info (NPS API is down)
      render json: park.to_json()
    else
      #add in our db id
      park["data"][0]["db_id"] = params[:id]

      render json: park.to_json()
    end
  end
end
