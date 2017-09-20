class NpsparksController < ApplicationController

  def show
    parkCode = Park.find(params[:id]).parkCode
    nps_service = NpsService.new

    park = nps_service.getPark(parkCode)

    if park[:errors]
      render json: park.to_json(), status: 404
    else
      #add in our db id
      park["data"][0]["db_id"] = params[:id]

      render json: park.to_json()
    end
  end
end
