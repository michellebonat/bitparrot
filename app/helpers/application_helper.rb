module ApplicationHelper
  def parsed_tweet tweet
    _parsed_tweet = tweet.text.dup

    tweet.urls.each do |entity|
      html_link = link_to(entity.display_url.to_s, entity.expanded_url.to_s, target: '_blank')
      _parsed_tweet.sub!(entity.url.to_s, html_link)
    end

    tweet.media.each do |entity|
      html_link = link_to(entity.display_url.to_s, entity.expanded_url.to_s, target: '_blank')
      _parsed_tweet.sub!(entity.url.to_s, html_link)
    end

    _parsed_tweet.html_safe
  end
end
