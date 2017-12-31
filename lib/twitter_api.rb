class TwitterApi
    def self.rornews_tweets
        client.user_timeline('rubyonrailsnews', count: 10, exclude_replies: true, include_rts: false)
    end

    def self.railscontent_tweets
      client.user_timeline('rubyonrrails', count: 10, exclude_replies: true, include_rts: false)
    end

    def self.rorjobs_tweets
      client.user_timeline('rorjobs', count: 20, exclude_replies: true, include_rts: false)
    end
    
    def self.rubyinside_tweets
      client.user_timeline('rubyinside', count: 20, exclude_replies: true, include_rts: false)
    end

    def self.thepsf_tweets
      client.user_timeline('thepsf', count: 20, exclude_replies: true, include_rts: false)
    end

    def self.talkpython_tweets
      client.user_timeline('talkpython', count: 20, exclude_replies: true, include_rts: false)
    end

    def self.pyjobo_tweets
      client.user_timeline('pyjobo', count: 20, exclude_replies: true, include_rts: false)
    end

    def self.ml_toparticles_tweets
      client.user_timeline('ml_toparticles', count: 20, exclude_replies: true, include_rts: false)
    end

    def self.slashml_tweets
      client.user_timeline('slashML', count: 20, exclude_replies: true, include_rts: false)
    end

    def self.client
        @client ||= Twitter::REST::Client.new do |config|
            config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
            config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
        end
    end
end

