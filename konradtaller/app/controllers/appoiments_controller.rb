class AppoimentsController < ApplicationController
  before_action :set_appoiment, only: [:show, :edit, :update, :destroy]

  # GET /appoiments
  # GET /appoiments.json
  def index
    @appoiments = Appoiment.all
  end

  # GET /appoiments/1
  # GET /appoiments/1.json
  def show
  end

  # GET /appoiments/new
  def new
    @appoiment = Appoiment.new
  end

  # GET /appoiments/1/edit
  def edit
  end

  # POST /appoiments
  # POST /appoiments.json
  def create
    @appoiment = Appoiment.new(appoiment_params)

    respond_to do |format|
      if @appoiment.save
        format.html { redirect_to @appoiment, notice: 'Appoiment was successfully created.' }
        format.json { render :show, status: :created, location: @appoiment }
      else
        format.html { render :new }
        format.json { render json: @appoiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appoiments/1
  # PATCH/PUT /appoiments/1.json
  def update
    respond_to do |format|
      if @appoiment.update(appoiment_params)
        format.html { redirect_to @appoiment, notice: 'Appoiment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appoiment }
      else
        format.html { render :edit }
        format.json { render json: @appoiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appoiments/1
  # DELETE /appoiments/1.json
  def destroy
    @appoiment.destroy
    respond_to do |format|
      format.html { redirect_to appoiments_url, notice: 'Appoiment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appoiment
      @appoiment = Appoiment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appoiment_params
      params.require(:appoiment).permit(:consulting_room_id, :patient_id, :doctor_id, :begindate, :enddate, :comment)
    end
end
