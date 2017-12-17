class StaticController < ApplicationController
  def home
    require 'open_weather'
    weather_options = { units: "imperial", APPID: ENV.fetch('WEATHER_API_ID') }
    weather_obj = OpenWeather::Current.geocode(33.4942, -111.9261, weather_options)
    @temperature = weather_obj['main']['temp'].to_s.split('.').first
  end

  def contact_us
    @page_title = 'Contact Us'
  end
end
