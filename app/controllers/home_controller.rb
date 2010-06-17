class HomeController < ApplicationController
  def index
    @articles = Article.recent_articles
    @events = Event.next_4
    @galleries_count = Gallery.count
    @videos_count = Video.count
  end
end
