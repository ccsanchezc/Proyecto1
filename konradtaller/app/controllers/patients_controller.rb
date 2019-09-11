class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
  @sessi = session[:logged]	
	if ( @sessi == true )
    @patients = Patient.all
	else 	
	redirect_to "/login"	
	end
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new
  @sessi = session[:logged]	
	if ( @sessi == true )
    @patient = Patient.new
	else 	
	redirect_to "/login"	
	end
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
  @sessi = session[:logged]	
	if ( @sessi == true )
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
	else 	
	redirect_to "/login"	
	end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
  @sessi = session[:logged]	
	if ( @sessi == true )
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
	else 	
	redirect_to "/login"	
	end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
  @sessi = session[:logged]	
	if ( @sessi == true )
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
	else 	
	redirect_to "/login"	
	end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:document, :name, :lastname, :birthdate)
    end
end
