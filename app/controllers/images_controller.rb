class ImagesController < ApplicationController
  respond_to :json, :html, :js
  before_filter :find_gallery
    
  def create
    @image = Image.new()
    @image.gallery_id = @gallery.id
    @image.photo = params[:file]
    
    respond_to do |format|
      if @image.save
        format.js { render :json => "{success:true}" }
      else
        format.html { redirect_to @gallery }
      end
    end
  end
  
  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    flash[:notice] = "Photo efface"
    respond_to do |format|
      if @gallery
        format.html { redirect_to gallery_url(@gallery) }
      else
        format.html { redirect_to images_url }
      end
    end    
  end
  
  private
  
  def find_gallery
    @gallery = Gallery.find(params[:gallery_id]) if params[:gallery_id]
  end
end
