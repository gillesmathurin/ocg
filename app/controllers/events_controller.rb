class EventsController < ApplicationController
  def index
    @events = Event.paginate(:page => params[:page], :per_page => 10, :order => "start_date desc")
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
        format.html { redirect_to(@event) }
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
         format.html { redirect_to(event_url(@event)) }
       else
         format.html { render :action => "edit" }
       end
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to eventS_url
  end
end
