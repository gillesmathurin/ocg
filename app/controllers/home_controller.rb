class HomeController < ApplicationController
  def index
    @articles = Article.recent_articles
    @events = Event.next_10
    @galleries_count = Gallery.count
    @videos_count = Video.count
  end
end
