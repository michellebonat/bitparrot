require 'httparty'

class DataSimplyApi
    include HTTParty

    base_uri'https://api.datasimply.com/v1'
    format :json

    def initialize(token)
        @authentication = {Bearer: token }
    end

    attr_accessor :filings, :tags, :concepts

    def initialize(filings, tags, concepts)
      self.filings = filings
      self.tags = tags
      self.concepts = concepts
    end

    # stubbing out the various find methods they are not yet working

    # Returns filings for the most recent 20
    def self.find(filings)
      response = get("/sec_filings.json") # need to restrict how many are pulled how to do that?
      if response.success?
        self.new(response["filings"])
      else
        raise response.response
      end
    end

    # Returns tags for the most recent 20 filings
    def self.find(tags)
      response = get("/tags.json") # need to restrict how many are pulled how to do that?
      if response.success?
        self.new(response["tags"])
      else
        raise response.response
      end
    end

    # Returns concepts for the most recent 20 filings
    def self.find(concepts)
      response = get("/concepts.json") # need to restrict how many are pulled how to do that?
      if response.success?
        self.new(response["concepts"])
      else
        raise response.response
      end
    end

    def self.client
        @client ||= DataSimply::REST::Client.new do |config|
            token        = ENV['DATASIMPLY_TOKEN']
        end
    end
end

