class NpsService
  def importParks
    # NPS API only allows 50 to be read at a time, start param allows which 50
    start = 1
    while start < 550 do
      @resp = Faraday.get 'https://developer.nps.gov/api/v0/parks' do |req|
        req.headers['Authorization'] = "7CFC0AE5-8AFA-466A-A85D-01E715C13D39"
        req.params['start'] = start
      end
      a = JSON.parse(@resp.body)

      #add to db. Only parks with full_name and lat_long allowed (see model validation)
      a["data"].each do |park|
        Park.create(
          states: park["states"],
          lat_long: park["latLong"],
          description: park["description"],
          designation: park["designation"],
          park_code: park["parkCode"],
          park_id: park["id"],
          directions_url: park["directionsUrl"],
          full_name: park["fullName"],
          url: park["url"],
          weather_info: park["weatherInfo"],
          name: park["name"]
        )
      end
      start += 50
    end

  end
end
