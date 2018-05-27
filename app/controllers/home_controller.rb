require 'open-uri'

class HomeController < ApplicationController
  def index
    search = params[:search] || "pattern"
    @images = Unsplash::Photo.search(search, 1, 30)
  end

  def download_image
    data = open(resized_url(url: params[:url], w: params[:w], h: params[:h]))
    send_data data.read, type: "image/jpeg", disposition: "attachment",
      filename: "#{params[:image_id]}_#{params[:w]}x#{params[:h]}.jpg"
  end

  private

  def resized_url(url:, w:, h:)
    url.split("?").first + "?w=#{w}&h=#{h}&fit=crop"
  end
end
