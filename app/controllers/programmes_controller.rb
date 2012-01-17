class ProgrammesController < ApplicationController
  def index
    @programmes = Programme.all
  end
    
  def show
    @programme = Programme.find(params[:id])
  end
  
  def new
    @programme = Programme.new
  end
  
  def edit
    @programme = Programme.find(params[:id])
  end
  
  def create
    @programme = Programme.new(params[:programme])
    respond_to do |format|
      if @programme.save
        format.html { redirect_to programme_url(@programme) }
      else
        format.html { render :action => "new" }
      end
    end
  end
  
  def update
    @programme = Programme.find(params[:id])
    respond_to do |format|
      if @programme.update_attributes(params[:programme])
        format.html { redirect_to programme_url(@programme) }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
  def destroy
    @programme = Programme.find(params[:id])
    @programme.destroy
    redirect_to programmes_url
  end
  
  def download_programme
    @programme = Programme.current.first
    send_file @programme.fichier.path, :filename => @programme.fichier.original_filename
  end
end
