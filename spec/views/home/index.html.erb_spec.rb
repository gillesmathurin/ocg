require 'spec_helper'

describe "/home/index" do
  include ApplicationHelper

  context "with existing articles and events" do
    before(:each) do
      assigns[:articles] = [ stub_model(Article, :title => "the title", :start_date => Time.parse("2010-02-10 15:00:00", :content => "")) ]
      assigns[:events] = [stub_model(Event, :title => "the title", :start_date => Time.parse("2010-02-10 15:00:00", :description => ""))]
    end
    
    it "renders some recent articles" do
      render
      response.should have_selector(".recent_articles") do |list|
        list.should have_selector("li.article", :content => "the title")
      end
    end

    it "renders some next events" do
      render
      response.should have_selector(".next_events") do |list|
        list.should have_selector("li.event", :content => "the title")
      end
    end
    
    it "renders the login link" do
      render
      response.should have_tag("a", t(:reserved_access))
    end
  end
  
  context "with no contents to display" do
    before(:each) do
      assigns[:articles], assigns[:events] = [], []
    end
    
    it "display a no articles messages" do
      render
      response.should have_selector(".recent_articles") do |list|
          list.should have_selector("li.article", :content => "Pas d'articles pour le moment")
      end
    end
    
    it "displays a No next events to come" do
      render
      response.should have_selector(".next_events") do |list|
        list.should have_selector("li.event", :content => t(:no_events_to_come))
      end
    end
  end

end
