require 'spec_helper'

describe "/articles/index" do
  include ApplicationHelper
  
  context "with existing articles" do
    before(:each) do
      @article = mock_model(Article, :title => "a title", :start_date =>Time.parse("2010-02-10 15:00:00"), :content => "")
      assigns[:articles] = [ @article ]
    end
    
    it "renders some articles summary" do
      render
      response.should have_selector(".articles") do |list|
        list.should have_selector("li.article", :content => "a title")
      end
    end
    
    it "renders links with each article" do
      # pending()
      render
      response.should have_selector(".articles") do |list|
        list.should have_selector("a", :href => article_path(@article))
        list.should have_selector("a", :href => edit_article_path(@article))
        list.should have_selector("a", :href => article_path(@article))
      end
    end
  end

end
