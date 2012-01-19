class HomeController < ApplicationController
  def index
    @articles = Article.recent_articles
    @events = Event.next_5
    @galleries_count = Gallery.count
    @videos_count = Video.count
    @programme = Programme.current.first
    # visit count
    Visitor.find_or_create_by_ip(request.ip)
    @visitors_count = Visitor.count
  end
end
