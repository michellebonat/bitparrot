module ApplicationHelper
  def parsed_tweet tweet
    _parsed_tweet = tweet.text.dup
  end
end
