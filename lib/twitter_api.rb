class TwitterApi
    def self.rornews_tweets
        client.user_timeline('rubyonrailsnews', count: 10, exclude_replies: true, include_rts: false)
    end

    def self.public_tweets
      client.user_timeline('rubyonrailsnews', count: 10, exclude_replies: true, include_rts: false)
    end

    def self.public_tweets
      client.user_timeline('rubyonrailsnews', count: 10, exclude_replies: true, include_rts: false)
    end

    def self.client
        @client ||= Twitter::REST::Client.new do |config|
            config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
            config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
        end
    end
end

