class GalleriesController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :edit, :create, :destroy, :update]
  
  def index
    @galleries = Gallery.paginate(:page => params[:page], :per_page => 6, :order => "created_at desc")
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def new
    @gallery = Gallery.new
    5.times { @gallery.images.build }
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end
  
  def create
    @gallery = Gallery.new(params[:gallery])
    
    respond_to do |format|
      if @gallery.save
        flash[:notice] = I18n.t(:good_created_gallery)
        format.html { redirect_to(@gallery) }
        format.xml { render :xml => @gallery, :status => :created, :location => @gallery }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @gallery.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def update
    @gallery = Gallery.find(params[:id])
    
    respond_to do |format|
      if @gallery.update_attributes(params[:gallery])
        flash[:notice] = I18n.t(:good_modified_gallery)
        format.html { redirect_to(@gallery) }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    redirect_to galleries_path()
  end
end
