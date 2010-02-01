require 'spec_helper'

describe EventsController do

  def mock_event(stubs = {})
    @mock_event ||= mock_model(Event, stubs)
  end

  describe "GET 'index'" do
    it "assigns the 10 most recent events as @events" do
      Event.stub(:paginate).and_return([mock_event])
      get :index
      assigns[:events].should == ([mock_event])
    end
  end

  describe "GET 'show'" do
    it "assigns the requested event as @event" do
      Event.should_receive(:find).with("37").and_return(mock_event)
      get :show, :id => "37"
      assigns[:event].should == mock_event
    end
  end

  describe "GET 'new'" do
    it "assigns a newly created but unsaved event as @event" do
      Event.should_receive(:new).and_return(mock_event)
      get :new
      assigns[:event].should == mock_event
    end
  end

  describe "GET 'edit'" do
    it "assigns the requested event as @event" do
      Event.should_receive(:find).with("37").and_return(mock_event)
      get :edit, :id => "37"
      assigns[:event].should == mock_event
    end
  end
  
  describe "POST 'create'" do
    context "with valid params" do
      it "assigns a newly created event as @event" do
        Event.should_receive(:new).with({'these' => 'params'}).and_return(mock_event(:save => true))
        post :create, :event => {:these => "params"}
        assigns[:event].should == mock_event
      end
      
      it "redirect to the newly created event page" do
        Event.should_receive(:new).with({'these' => 'params'}).and_return(mock_event(:save => true))
        post :create, :event => {:these => "params"}
        response.should redirect_to(event_url(mock_event))
      end
    end
    
    context "with invalid params" do
      it "re-renders the new template" do
        Event.should_receive(:new).with({}).and_return(mock_event(:save => false))
        post :create, :event => {}
        response.should render_template("new")
      end
    end
  end
  
  describe "PUT 'update'" do
    context "with valid params" do
      it "does something" do
        
      end
    end
    
    context "with invalid params" do
      it "re-renders the edit template" do
        Event.should_receive(:find).with("37").and_return(mock_event(:update_attributes => false))
        put :update, :id => "37"
        response.should render_template('edit')
      end
    end
  end
end
