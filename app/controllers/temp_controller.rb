class TempController < ApplicationController
  def index

    @resp = Faraday.get 'https://developer.nps.gov/api/v0/visitorCenters' do |req|
      req.headers['Authorization'] = "7CFC0AE5-8AFA-466A-A85D-01E715C13D39"
    end

    a = JSON.parse(@resp.body)
    render json: a
  end
end
