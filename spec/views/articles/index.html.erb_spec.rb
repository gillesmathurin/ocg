require 'spec_helper'

describe "/articles/index" do
  include ApplicationHelper
  
  context "with existing articles" do
    before(:each) do
      @article = mock_model(Article, :title => "a title", :start_date =>Time.parse("2010-02-10 15:00:00"), :content => "")
      assigns[:articles] = [ @article ]
      @user = create_default_user
    end
    
    it "renders some articles summary" do
      render
      response.should have_selector(".articles") do |list|
        list.should have_selector("li.article", :content => "a title")
      end
    end
    
    it "renders the Lire link" do
      render
      response do |list|
        list.should have_selector("li.article", :content => "a title")
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
        response.should have_selector(".articles") do |list|
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

end
