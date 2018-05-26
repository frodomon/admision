class ObservationTypesController < ApplicationController
  before_action :set_observation_type, only: [:show, :edit, :update, :destroy]

  # GET /observation_types
  # GET /observation_types.json
  def index
    @observation_types = ObservationType.all
  end

  # GET /observation_types/1
  # GET /observation_types/1.json
  def show
  end

  # GET /observation_types/new
  def new
    @observation_type = ObservationType.new
  end

  # GET /observation_types/1/edit
  def edit
  end

  # POST /observation_types
  # POST /observation_types.json
  def create
    @observation_type = ObservationType.new(observation_type_params)

    respond_to do |format|
      if @observation_type.save
        format.html { redirect_to @observation_type, notice: 'Observation type was successfully created.' }
        format.json { render :show, status: :created, location: @observation_type }
      else
        format.html { render :new }
        format.json { render json: @observation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /observation_types/1
  # PATCH/PUT /observation_types/1.json
  def update
    respond_to do |format|
      if @observation_type.update(observation_type_params)
        format.html { redirect_to @observation_type, notice: 'Observation type was successfully updated.' }
        format.json { render :show, status: :ok, location: @observation_type }
      else
        format.html { render :edit }
        format.json { render json: @observation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observation_types/1
  # DELETE /observation_types/1.json
  def destroy
    @observation_type.destroy
    respond_to do |format|
      format.html { redirect_to observation_types_url, notice: 'Observation type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_observation_type
      @observation_type = ObservationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def observation_type_params
      params.require(:observation_type).permit(:nombre)
    end
end
