class ParticipationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event, only: [:show]

  # GET /events
  # GET /events.json
  def index
    @participations = Participation.all
  end

  def create
    @user = User.find(params[:userid])
    @event = Event.find(params[:eventid])

    respond_to do |format|
      if @user.events.exists?(params[:eventid])
        format.html { redirect_to events_path, alert: "Already entered" }
        format.json { render json: @user.errors, status: :unprocessable_entity}
      else
        @user.events << @event

        format.html { redirect_to events_path, notice: 'You entered the event :)' }
      end
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

end
