class ArticlesController < ApplicationController
  
  def index
    @articles = Article.paginate(:page => params[:page], :per_page => 10, :order => "created_at desc")
  end

  def show
    @article = Article.find(params[:id])
    respond_to do |format|
      format.html {  }
    end
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end
  
  def create
    @article = Article.new(params[:article])
  
    respond_to do |format|
      if @article.save
        flash[:notice] = 'Article crée avec succès.'
        format.html { redirect_to(@article) }
        format.xml { render :xml => @article, :status => :created, :location => @article }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def update
    @article = Article.find(params[:id])
    
    respond_to do |format|
      if @article.update_attributes(params[:article])
        flash[:notice] = "Article modifié avec succès"
        format.html { redirect_to(@article) }
        format.xml { render :xml => @article, :status => :updated, :location => @article }
      else
        format.html { render :action => "update" }
        format.xml { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    
    respond_to do |format|
      format.html { redirect_to(articles_url) }
    end
  end

end
