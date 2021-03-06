class ConsultingRoomsController < ApplicationController
  before_action :set_consulting_room, only: [:show, :edit, :update, :destroy]

  # GET /consulting_rooms
  # GET /consulting_rooms.json
  def index
  @sessi = session[:logged]	
	if ( @sessi == true )
    @consulting_rooms = ConsultingRoom.all
	else 	
	redirect_to "/login"	
	end
  end

  # GET /consulting_rooms/1
  # GET /consulting_rooms/1.json
  def show
  end

  # GET /consulting_rooms/new
  def new
  @sessi = session[:logged]	
	if ( @sessi == true )
    @consulting_room = ConsultingRoom.new
	else 	
	redirect_to "/login"	
	end
  end

  # GET /consulting_rooms/1/edit
  def edit
  end

  # POST /consulting_rooms
  # POST /consulting_rooms.json
  def create
  @sessi = session[:logged]	
	if ( @sessi == true )
    @consulting_room = ConsultingRoom.new(consulting_room_params)

    respond_to do |format|
      if @consulting_room.save
        format.html { redirect_to @consulting_room, notice: 'Consulting room was successfully created.' }
        format.json { render :show, status: :created, location: @consulting_room }
      else
        format.html { render :new }
        format.json { render json: @consulting_room.errors, status: :unprocessable_entity }
      end
    end
	else 	
	redirect_to "/login"	
	end
  end

  # PATCH/PUT /consulting_rooms/1
  # PATCH/PUT /consulting_rooms/1.json
  def update
  @sessi = session[:logged]	
	if ( @sessi == true )
    respond_to do |format|
      if @consulting_room.update(consulting_room_params)
        format.html { redirect_to @consulting_room, notice: 'Consulting room was successfully updated.' }
        format.json { render :show, status: :ok, location: @consulting_room }
      else
        format.html { render :edit }
        format.json { render json: @consulting_room.errors, status: :unprocessable_entity }
      end
    end
	else 	
	redirect_to "/login"	
	end
  end

  # DELETE /consulting_rooms/1
  # DELETE /consulting_rooms/1.json
  def destroy
  @sessi = session[:logged]	
	if ( @sessi == true )
    @consulting_room.destroy
    respond_to do |format|
      format.html { redirect_to consulting_rooms_url, notice: 'Consulting room was successfully destroyed.' }
      format.json { head :no_content }
    end
	else 	
	redirect_to "/login"	
	end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulting_room
      @consulting_room = ConsultingRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consulting_room_params
      params.require(:consulting_room).permit(:name, :location, :typeroom)
    end
end
