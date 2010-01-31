require 'spec_helper'

describe ArticlesController do

  #Delete these examples and add some real ones
  it "should use ArticlesController" do
    controller.should be_an_instance_of(ArticlesController)
  end
  
  before(:each) do
    @article = mock_model(Article)
  end

  describe "GET 'index'" do
    it "find all the articles as @articles by group of 10" do
      Article.should_receive(:paginate).and_return([@article])
      get 'index'
      assigns[:articles].should == [@article]
    end
  end

  describe "GET 'show'" do
    it "find the requested article as @article" do
      Article.should_receive(:find).with("1").and_return(@article)
      get 'show', :id => "1"
      assigns[:article].should == @article
      response.should render_template('show')
    end
  end

  describe "GET 'new'" do
    it "assigns a new article as @article" do
      Article.should_receive(:new).and_return(@article)
      get 'new'
      assigns[:article].should == @article
      response.should render_template("new")
    end
  end

  describe "GET 'edit'" do
    it "assigns the requested article as @article" do
      Article.should_receive(:find).with("1").and_return(@article)
      get 'edit', :id => "1"
      assigns[:article].should == @article
      response.should render_template("edit")
    end
  end
  
  describe "POST 'create'" do
    context "with a successful save" do
      it "assigns description" do
        
      end
    end
    
    context "with a unsuccessful save" do
      it "should description" do
        
      end
    end
  end
end
