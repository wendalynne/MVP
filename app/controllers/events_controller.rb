class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  load_and_authorize_resource
  skip_before_filter :authenticate_user!, :only => [:index, :show, :post_event]
  
  def index
    @events = Event.includes(:images, :guests)
    #Shows only events in the future for now!
    @events = @events.where("approved = ?", true)
    if params[:q].present?
      #.map(&:user_id) is a shortcut for .map{|u| u.user_id}
      host_ids = Profile.includes(:user).where("biz_name iLike ?", "%#{params[:q]}%").map(&:user_id)
      @events = @events.where("title ilike ? OR blurb iLike ? OR description iLike ? OR host_id in (?)", "%#{params[:q]}%", "%#{params[:q]}%", "%#{params[:q]}%", host_ids)   
    end
    @events = @events.order("upcoming desc").order("date desc")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  def post_event
    @event = Event.find(params[:id])
    if !@event.upcoming || @event.happened?
      respond_to do |format|
        format.html
      end
    else
      redirect_to event_path(@event)
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    if @event.approved == false
      if user_signed_in?
        if @event.host.id==current_user.id || current_user.id==1 || current_user.id==13 || current_user.id==529
          respond_to do |format|
            format.html
            format.json { render json: @event }
          end
        else
          render :file => 'public/noaccess.html'
        end
      else
        render :file => 'public/noaccess.html'
      end
    else
      if @event.upcoming == false
        if @event.date.present? && @event.time.present?
          if @event.happened?
            redirect_to "/events/#{@event.id}/post_event"
          else
            respond_to do |format|
              format.html # show.html.erb
              format.json { render json: @event }
            end
          end
        end
      end
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new
    3.times { @event.covers.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])
    @event.host_id = current_user.id

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
end
