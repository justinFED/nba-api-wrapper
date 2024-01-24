require 'uri'
require 'net/http'

module FreeNba
  class Client
    BASE_URL = 'https://free-nba.p.rapidapi.com'.freeze

    def initialize(api_key)
      @api_key = api_key
    end

    def get(endpoint, params = {})
      uri = URI("#{BASE_URL}/#{endpoint}")
      uri.query = URI.encode_www_form(params)

      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = Net::HTTP::Get.new(uri)
      request['X-RapidAPI-Host'] = 'free-nba.p.rapidapi.com'
      request['X-RapidAPI-Key'] = @api_key

      response = http.request(request)
      handle_response(response)
    end

    private

    def handle_response(response)
      case response.code
      when '200'
        JSON.parse(response.body)
      when '401'
        raise StandardError, 'Unauthorized: Please check your RapidAPI key'
      when /4\d{2}/
        raise StandardError, "Client error: #{response.code} #{response.body}"
      when /5\d{2}/
        raise StandardError, "Server error: #{response.code} #{response.body}"
      else
        raise StandardError, "Unexpected error: #{response.code} #{response.body}"
      end
    end
  end
end
