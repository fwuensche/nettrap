module ApplicationHelper
  def resized_url(url:, w:, h:)
    url.split("?").first + "?w=#{w}&h=#{h}&fit=crop"
  end
end
