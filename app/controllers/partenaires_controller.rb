class PartenairesController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :edit, :create, :destroy, :update]
  # GET /partenaires
  # GET /partenaires.xml
  def index
    @partenaires = Partenaire.paginate(:page => params[:page], :per_page => 12, :order => "created_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @partenaires }
    end
  end

  # GET /partenaires/1
  # GET /partenaires/1.xml
  def show
    @partenaire = Partenaire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @partenaire }
    end
  end

  # GET /partenaires/new
  # GET /partenaires/new.xml
  def new
    @partenaire = Partenaire.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @partenaire }
    end
  end

  # GET /partenaires/1/edit
  def edit
    @partenaire = Partenaire.find(params[:id])
  end

  # POST /partenaires
  # POST /partenaires.xml
  def create
    @partenaire = Partenaire.new(params[:partenaire])

    respond_to do |format|
      if @partenaire.save
        flash[:notice] = I18n.t(:successfully_added_partner)
        format.html { redirect_to(partenaires_path()) }
        format.xml  { render :xml => @partenaire, :status => :created, :location => @partenaire }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @partenaire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /partenaires/1
  # PUT /partenaires/1.xml
  def update
    @partenaire = Partenaire.find(params[:id])

    respond_to do |format|
      if @partenaire.update_attributes(params[:partenaire])
        flash[:notice] = I18n.t(:successfully_modified_partner)
        format.html { redirect_to(partenaires_path()) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @partenaire.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /partenaires/1
  # DELETE /partenaires/1.xml
  def destroy
    @partenaire = Partenaire.find(params[:id])
    @partenaire.destroy

    respond_to do |format|
      format.html { redirect_to(partenaires_url) }
      format.xml  { head :ok }
    end
  end
end
