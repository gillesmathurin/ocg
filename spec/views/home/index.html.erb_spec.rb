require 'spec_helper'

describe "/home/index" do

  context "with existing articles and events" do
    before(:each) do
      assigns[:articles] = [ stub_model(Article, :title => "the title"),
        stub_model(Article, :title => "the title"),
        stub_model(Article, :title => "the title"),
        stub_model(Article, :title => "the title") ]
      assigns[:events] = [stub_model(Event, :title => "the title"),
        stub_model(Event, :title => "the title"),
        stub_model(Event, :title => "the title"),
        stub_model(Event, :title => "the title")]
    end
    
    it "renders recent articles" do
      render
      response.should have_selector(".recent_articles") do |list|
        list.should have_selector("li.article", :content => "the title")
      end
    end

    it "renders next events" do
      render
      response.should have_selector(".next_events") do |list|
        list.should have_selector("li.event", :content => "the title")
      end
    end
  end

end
