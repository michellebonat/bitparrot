require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['CONFIG_CONSUMER_KEY']
  config.consumer_secret = ENV['CONFIG_CONSUMER_SECRET']
  config.access_token = ENV['CONFIG_ACCESS_TOKEN']
  config.access_token_secret = ENV['CONFIG_ACCESS_TOKEN_SECRET']
end