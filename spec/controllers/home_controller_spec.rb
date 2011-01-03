require 'spec_helper'

describe HomeController do

  #Delete these examples and add some real ones
  it "should use HomeController" do
    controller.should be_an_instance_of(HomeController)
  end

  def mock_article(stubs={})
    @mock_article ||= mock_model(Article, stubs)
  end
  
  def mock_event(stubs = {})
    @mock_event ||= mock_model(Event, stubs)
  end
  
  describe "GET 'index'" do
    it "assigns the 4 more recent articles as @articles" do
      Article.should_receive(:recent_articles).and_return([mock_article])
      get 'index'
      response.should be_success
      assigns[:articles].should == [mock_article]
    end
    
    it "assigns the next 4 events as @events" do
      Event.should_receive(:next_10).and_return([mock_event])
      get 'index'
      response.should be_success
      assigns[:events].should == [mock_event]
    end
  end
end
