class HomeController < ApplicationController
  def index
    @articles = Article.recent_articles
    @events = Event.next_5
    @galleries_count = Gallery.count
    @videos_count = Video.count
    @programme = Programme.current.first
  end
end
