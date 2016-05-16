class HashtagEventsController < ApplicationController
  before_action :set_hashtag_event, only: [:show, :edit, :update, :destroy]

  # GET /hashtag_events
  # GET /hashtag_events.json
  def index
    @hashtag_events = HashtagEvent.all
  end

  # GET /hashtag_events/1
  # GET /hashtag_events/1.json
  def show
  end

  # GET /hashtag_events/new
  def new
    @hashtag_event = HashtagEvent.new
  end

  # GET /hashtag_events/1/edit
  def edit
  end

  # POST /hashtag_events
  # POST /hashtag_events.json
  def create
    @hashtag_event = HashtagEvent.new(hashtag_event_params)

    respond_to do |format|
      if @hashtag_event.save
        format.html { redirect_to @hashtag_event, notice: 'Hashtag event was successfully created.' }
        format.json { render :show, status: :created, location: @hashtag_event }
      else
        format.html { render :new }
        format.json { render json: @hashtag_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hashtag_events/1
  # PATCH/PUT /hashtag_events/1.json
  def update
    respond_to do |format|
      if @hashtag_event.update(hashtag_event_params)
        format.html { redirect_to @hashtag_event, notice: 'Hashtag event was successfully updated.' }
        format.json { render :show, status: :ok, location: @hashtag_event }
      else
        format.html { render :edit }
        format.json { render json: @hashtag_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hashtag_events/1
  # DELETE /hashtag_events/1.json
  def destroy
    @hashtag_event.destroy
    respond_to do |format|
      format.html { redirect_to hashtag_events_url, notice: 'Hashtag event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hashtag_event
      @hashtag_event = HashtagEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hashtag_event_params
      params.require(:hashtag_event).permit(:hashtag_id, :event_id)
    end
end
