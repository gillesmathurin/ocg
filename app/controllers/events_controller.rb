class EventsController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :edit, :create, :destroy, :update]
  uses_tiny_mce
  
  def index
    @events_fcfg = Event.fcfg
    @events_gccrp = Event.gccrp
    @events_fcg = Event.fcg
    @events = Event.to_come
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end
  
  def create
    @event = Event.new(params[:event])
    
    respond_to do |format|
      if @event.save
        flash[:notice] = 'Evenement enregistré.'
        format.html { redirect_to(events_url) }
        format.xml { render :xml => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def update
    @event = Event.find(params[:id])
    
    respond_to do |format|
       if @event.update_attributes(params[:event])
         flash[:notice] = "Evenement modifié"
         format.html { redirect_to(events_url) }
       else
         format.html { render :action => "edit" }
       end
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_url
  end
end
