class ReniecsController < ApplicationController
  before_action :set_reniec, only: [:show, :edit, :update, :destroy]

  # GET /reniecs
  # GET /reniecs.json
  def index
    @reniecs = Reniec.all
  end

  # GET /reniecs/1
  # GET /reniecs/1.json
  def show
  end

  # GET /reniecs/new
  def new
    @reniec = Reniec.new
  end

  # GET /reniecs/1/edit
  def edit
  end

  # POST /reniecs
  # POST /reniecs.json
  def create
    @reniec = Reniec.new(reniec_params)

    respond_to do |format|
      if @reniec.save
        format.html { redirect_to @reniec, notice: 'Reniec was successfully created.' }
        format.json { render :show, status: :created, location: @reniec }
      else
        format.html { render :new }
        format.json { render json: @reniec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reniecs/1
  # PATCH/PUT /reniecs/1.json
  def update
    respond_to do |format|
      if @reniec.update(reniec_params)
        format.html { redirect_to @reniec, notice: 'Reniec was successfully updated.' }
        format.json { render :show, status: :ok, location: @reniec }
      else
        format.html { render :edit }
        format.json { render json: @reniec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reniecs/1
  # DELETE /reniecs/1.json
  def destroy
    @reniec.destroy
    respond_to do |format|
      format.html { redirect_to reniecs_url, notice: 'Reniec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reniec
      @reniec = Reniec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reniec_params
      params.require(:reniec).permit(:dni, :last_name, :second_last_name, :name, :genre, :birthdate, :birth_departamento, :birth_provincia, :birth_distrito, :degree, :civil_state, :height, :register, :father_name, :mother_name, :emission_date, :restriction, :departamento, :provincia, :distrito, :address, :due_date)
    end
end
