class ParagraphsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :edit, :create, :destroy, :update]
  uses_tiny_mce# :options => { :theme => 'advanced' }
  
  before_filter :find_article
  
  def index
    @paragraphs = @articles.paragraphs
  end

  def show
    @paragraph = @article.paragraphs.find(params[:id])
  end

  def new
    @paragraph = @article.paragraphs.build
  end

  def edit
    @paragraph = @article.paragraphs.find(params[:id])
  end
  
  def create
    @paragraph = @article.paragraphs.build(params[:paragraph])
    
    respond_to do |format|
      if @paragraph.save
        flash[:notice] = "Paragraphe ajouté à l'article"
        format.html { redirect_to(@article) }
        format.xml { render :xml => @paragraph, :status => :created, :location => @paragraph }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @paragraph.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def update
    @paragraph = @article.paragraphs.find(params[:id])
    
    respond_to do |format|
      if @paragraph.update_attributes(params[:paragraph])
        format.html { redirect_to(@article) }
      else
        format.html { render :action => "edit"}
      end
    end
  end
  
  def destroy
    @paragraph = @article.paragraphs.find(params[:id])
    @paragraph.destroy
    
    redirect_to(@article)
  end
  
  private
  
  def find_article
    @article = Article.find(params[:article_id]) if params[:article_id]
  end
end
