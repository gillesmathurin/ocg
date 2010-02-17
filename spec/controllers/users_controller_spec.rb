require 'spec_helper'

describe UsersController do
  before(:each) do
    @user = create_default_user
  end

  #Delete these examples and add some real ones
  it "should use UsersController" do
    controller.should be_an_instance_of(UsersController)
  end


  describe "GET 'new'" do
    before(:each) do
      @user = mock_model(User)
    end
    it "assigns a new but unsaved user as @user" do
      User.should_receive(:new).and_return(@user)
      get :new
      assigns[:user].should == @user
    end
  end

  describe "GET 'edit'" do
    before(:each) do
      sign_in(@user)
    end
    
    it "assigns the current_user as @user" do
      get :edit
      assigns[:user].should == @user
    end
  end
end
