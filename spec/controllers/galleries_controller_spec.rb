require 'spec_helper'

describe GalleriesController do

  def mock_gallery(stubs={})
    @gallery ||= mock_model(Gallery, stubs)
  end
  
  before(:each) do
    @user = create_default_user
  end
  
  describe "GET 'index'" do
    it "finds all the galleries as @galleries" do
      Gallery.should_receive(:paginate).and_return([mock_gallery])
      get :index
      assigns[:galleries].should == [mock_gallery]
    end
  end

  describe "GET 'show'" do
    it "assigns the requested gallery as @gallery" do
      Gallery.should_receive(:find).with("37").and_return(mock_gallery)
      get :show, :id => "37"
      assigns[:gallery].should == mock_gallery      
    end
  end

  describe "GET 'new'" do
    before(:each) do
      sign_in(@user)
      @images = mock("images")
    end
    
    it "assigns a newly created but unsaved gallery as @gallery and build" do
      Gallery.should_receive(:new).and_return(mock_gallery)
      5.times {
        mock_gallery.should_receive(:images).and_return(@images)
        @images.should_receive(:build)
      }
      get :new
      assigns[:gallery].should == mock_gallery
    end
    
    it "renders the new template" do
      Gallery.should_receive(:new).and_return(mock_gallery)
      5.times {
        mock_gallery.should_receive(:images).and_return(@images)
        @images.should_receive(:build)
      }
      get :new
      response.should render_template('new')
    end
  end

  describe "GET 'edit'" do
    before(:each) do
      sign_in(@user)
    end
    
    it "assigns the requested gallery as @gallery" do
      Gallery.should_receive(:find).with("37").and_return(mock_gallery)
      get :show, :id => "37"
      assigns[:gallery].should == mock_gallery      
    end
    
    it "renders the edit template" do
      Gallery.should_receive(:find).with("37").and_return(mock_gallery)
      get :edit, :id => "37"
      response.should render_template('edit')
    end
  end
  
  describe "POST 'create'" do
    before(:each) do
      sign_in(@user)
    end
    
    context "with valid params" do
      it "assigns a newly created gallery as @gallery" do
        Gallery.should_receive(:new).with({'these' => 'params'}).and_return(mock_gallery(:save => true))
        post :create, :gallery => {:these => "params"}
        flash[:notice].should == t(:good_created_gallery)
      end
      
      it "redirect to the gallery show page" do
        Gallery.should_receive(:new).with({}).and_return(mock_gallery(:save => true))
        post :create, :gallery => {}
        response.should redirect_to(gallery_path(mock_gallery))
      end
    end
    
    context "with unvalid params" do
      it "re-renders the new template" do
        Gallery.should_receive(:new).with({}).and_return(mock_gallery(:save => false))
        post :create, :gallery => {}
        response.should render_template('new')
      end
    end
  end
  
  describe "PUT 'update'" do
    before(:each) do
      sign_in(@user)
    end
    
    context "with valid params" do
      it "updates the requested gallery" do
        Gallery.should_receive(:find).with("37").and_return(mock_gallery)
        mock_gallery.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :gallery => {:these => "params"}
      end
      
      it "assigns the requested gallery as @gallery" do
        Gallery.should_receive(:find).with("37").and_return(mock_gallery(:update_attributes => true))
        put :update, :id => "37"
        assigns[:gallery].should == mock_gallery
      end
      
      it "redirect to the requested gallery" do
        Gallery.should_receive(:find).with("37").and_return(mock_gallery(:update_attributes => true))
        put :update, :id => "37"
        response.should redirect_to(gallery_path(mock_gallery))
        
      end
    end
    
    context "with unvalid params" do
      it "re-renders the edit template" do
        Gallery.should_receive(:find).with("37").and_return(mock_gallery(:update_attributes => false))
        put :update, :id => "37"
        response.should render_template(:edit)        
      end
    end
  end
  
  describe "DELETE (destroy)" do
    before(:each) do
      sign_in(@user)
    end
    it "find the requested gallery, delete it and redirect to the index page" do
      Gallery.should_receive(:find).with("37").and_return(mock_gallery)
      mock_gallery.should_receive(:destroy)
      delete :destroy, :id => "37"
      response.should redirect_to(galleries_path())      
    end
  end
end
