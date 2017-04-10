require 'httparty'

class DataSimplyApi
    include HTTParty

    base_uri'https://api.datasimply.com/v1'
    format :json

    # def initialize(token)
    #     @authentication = {Bearer: token }
    # end
    #
    # def get_filings options = {}
    #   merge_auth options
    #   self.class.get('/sec_filings', options)
    # end
    #
    # def get_tags options = {}
    #   merge_auth options
    #   self.class.get('/tags', options)
    # end
    #
    # def get_concepts options = {}
    #   merge_auth options
    #   self.class.get('/concepts', options)
    # end

    def self.client
        @client ||= DataSimply::REST::Client.new do |config|
            token        = ENV['DATASIMPLY_TOKEN']
        end
    end
end

