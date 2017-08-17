class NpsService
  def importParks
    @resp = Faraday.get 'https://developer.nps.gov/api/v0/parks' do |req|
      req.headers['Authorization'] = ENV['NPS_KEY']
      req.params['limit'] = 600
    end
    a = JSON.parse(@resp.body)

    #add to db. Only parks with full_name and lat_long allowed (see model validation)
    a["data"].each do |park|
      Park.create(
        states: park["states"],
        latLong: park["latLong"],
        description: park["description"],
        designation: park["designation"],
        parkCode: park["parkCode"],
        parkId: park["id"],
        directionsUrl: park["directionsUrl"],
        fullName: park["fullName"],
        url: park["url"],
        weatherInfo: park["weatherInfo"],
        name: park["name"]
      )
    end
  end

  def importVisitorCenters
    @resp = Faraday.get 'https://developer.nps.gov/api/v0/visitorcenters' do |req|
      req.headers['Authorization'] = ENV['NPS_KEY']
      req.params['limit'] = 650
    end
    a = JSON.parse(@resp.body)

    a["data"].each do |center|
      Visitorcenter.create(
        name: center["name"],
        description: center["description"],
        latLong: center["latLong"],
        parkCode: center["parkCode"],
      )
    end
  end

  def getPark(parkCode)
    @resp = Faraday.get 'https://developer.nps.gov/api/v0/parks' do |req|
      req.headers['Authorization'] = ENV['NPS_KEY']
      req.params['parkCode'] = parkCode
      req.params['fields'] = 'addresses,images,operatingHours'
    end

    return JSON.parse(@resp.body)
  end

end
