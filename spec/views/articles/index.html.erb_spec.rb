require 'spec_helper'

describe "/articles/index" do
  include ApplicationHelper
  
  context "with existing articles" do
    before(:each) do
      @article = mock_model(Article, :title => "a title", :start_date =>Time.parse("2010-02-10 15:00:00"), :content => "")
      @articles = [ @article ].paginate
      assigns[:articles] = @articles
      @user = create_default_user
    end
    
    it "renders some articles summary" do
      render
      response.should have_selector(".article") do |list|
        list.should have_selector("li", :content => "a title")
      end
    end
    
    it "renders the Lire link" do
      render
      response do |list|
        list.should have_selector("li", :content => "a title")
        list.should contain("Lire")
        list.should_not contain("Modifier")
        list.should_not contain("Supprimer")
      end
    end
    
    context "with a user signed_in" do
      before(:each) do
        sign_in(@user)
      end
      
      it "renders links with each article" do
        render
        response.should have_selector(".article") do |list|
          list.should have_selector("a", :href => edit_article_path(@article))
          list.should contain("Modifier")
          list.should contain("Supprimer")
        end
      end
      
      after(:each) do
        sign_out(@user)
      end
    end
    
  end
  
  context "with 20 existing articles" do
    before(:each) do
      @articles = []
      12.times do
        @articles << mock_model(Article, :title => "a title", :start_date =>Time.parse("2010-02-10 15:00:00"), :content => "")
      end
      assigns[:articles] = @articles.paginate(:per_page => 10)
    end
    
    it "renders the will paginate links" do
      render
      response.should have_selector("div.pagination")
      response.should contain(t(:precedent))
      response.should contain("Suivant")
    end
  end
  
end
