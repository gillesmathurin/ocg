require 'spec_helper'

describe "/home/index" do
  
  it "displays the menu bar with the home link selected" do
    render
    response.should have_selector("li.selected", :content => "Accueil")
  end

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
        list.should have_selector("li.event", :content => "Pas d'événements à venir pour le moment")
      end
    end
  end

end
