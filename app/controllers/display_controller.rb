class DisplayController < ApplicationController
  #Controller for weather API calls
  def index
    if params['location']
      @response = GetWeather::Display.by_location(params['location'])
    end
  end
end
