class HomeController < ApplicationController
  def index
    @images = Unsplash::Photo.search("pattern")
  end
end
