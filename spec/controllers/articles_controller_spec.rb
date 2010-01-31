require 'spec_helper'

describe ArticlesController do
  
  def mock_article(stubs={})
    @mock_article ||= mock_model(Article, stubs)
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
    context "with valid params" do
      it "assigns a newly created article as @article" do
        Article.stub(:new).with({'these' => "params"}).and_return(mock_article)
        mock_article.should_receive(:save).and_return(true)
        post 'create', :article => {:these => "params"}
        assigns[:article].should equal(mock_article)
      end
      
      it "redirect to the created article" do
        Article.stub(:new).and_return(mock_article(:save => true))
        post 'create', :article => {}
        response.should redirect_to(article_url(mock_article))
      end
    end
    
    context "with invalid params" do
      it "assigns a newly created but unsaved article as @article" do
        Article.stub(:new).with({'these' => "params"}).and_return(mock_article(:save => false))
        post :create, :article => {:these => 'params'}
        assigns[:article].should equal(mock_article)
      end
      
      it "re-renders the 'new' template" do
        Article.stub(:new).and_return(mock_article(:save => false))
        post :create, :article => {}
        response.should render_template('new')
      end
    end
  end
  
  describe "PUT update" do
    context "with valid params" do
      it "updates the requested article" do
        Article.should_receive(:find).with("1").and_return(mock_article)
        mock_article.should_receive(:update_attributes).with('these' => 'params')
        put :update, :id => "1", :article => {:these => 'params'}
      end
      
      it "assigns the requested article as @article" do
        Article.stub(:find).and_return(mock_article(:update_attributes => true))
        put :update, :id => "1"
        assigns[:article].should equal(mock_article)
      end
      
      it "redirects to the article" do
        Article.stub(:find).and_return(mock_article(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(article_url(mock_article))
      end
    end
  end
  
  describe "DELETE destroy" do
    it "destroys the requested article" do
      Article.should_receive(:find).with("1").and_return(mock_article)
      mock_article.should_receive(:destroy)
      delete :destroy, :id => "1"
    end
    
    it "redirects to the articles list" do
      Article.should_receive(:find).with("1").and_return(mock_article)
      mock_article.should_receive(:destroy)
      delete :destroy, :id => "1"
      response.should redirect_to(articles_url)
    end
  end
end
