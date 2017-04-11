require 'httparty'

class DatasimplyApi
    include HTTParty

    base_uri'https://api.datasimply.com/v1'
    format :json

    # Returns filings for the most recent 20 by design of API
    def self.find_filings
      response = get("/sec_filings.json", :headers => { "Authorization" => "Bearer #{ENV['DATASIMPLY_TOKEN']}"})
      puts response.inspect
    end

    # Returns tags for the most recent 20 filings

    # Returns concepts for the most recent 20 filings

end

