module getWeather
    class Display
        def self.by_location(location)
            Faraday.get 'https://api.openweathermap.org/data/2.5/onecall?' + location + '&appid=07f897fff093a0173fab1fcb140efd86'
        end
    end
end