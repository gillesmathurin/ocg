class HomeController < ApplicationController
  def index
    @articles = Article.recent_articles
    @events = Event.next_4
    @galleries_count = Gallery.count
  end
end
