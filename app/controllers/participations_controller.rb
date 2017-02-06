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
    @user.events << @event

    respond_to do |format|
      if @user.save
        format.html { redirect_to events_path, notice: 'Participation was successfully created.' }
      else
        format.html { redirect_to events_path }
        format.json { render json: @user.errors, status: :unprocessable_entity, notice: "NOT CREATED" }
      end
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

end
