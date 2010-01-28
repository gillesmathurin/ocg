require 'spec_helper'

describe Article do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :content => "value for content"
    }
  end

  it "should create a new instance given valid attributes" do
    Article.create!(@valid_attributes)
  end
end

describe Article, ".recent_articles" do
  it "return at most the 4 more recent articles" do
    @articles = Article.recent_articles
    @articles.should have_at_most(4).records
  end
end
