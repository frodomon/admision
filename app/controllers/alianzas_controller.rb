class AlianzasController < ApplicationController
  before_action :set_alianza, only: [:show, :edit, :update, :destroy]

  # GET /alianzas
  # GET /alianzas.json
  def index
    @alianzas = Alianza.all
  end

  # GET /alianzas/1
  # GET /alianzas/1.json
  def show
  end

  # GET /alianzas/new
  def new
    @alianza = Alianza.new
  end

  # GET /alianzas/1/edit
  def edit
  end

  # POST /alianzas
  # POST /alianzas.json
  def create
    @alianza = Alianza.new(alianza_params)

    respond_to do |format|
      if @alianza.save
        format.html { redirect_to @alianza, notice: 'Alianza was successfully created.' }
        format.json { render :show, status: :created, location: @alianza }
      else
        format.html { render :new }
        format.json { render json: @alianza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alianzas/1
  # PATCH/PUT /alianzas/1.json
  def update
    respond_to do |format|
      if @alianza.update(alianza_params)
        format.html { redirect_to @alianza, notice: 'Alianza was successfully updated.' }
        format.json { render :show, status: :ok, location: @alianza }
      else
        format.html { render :edit }
        format.json { render json: @alianza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alianzas/1
  # DELETE /alianzas/1.json
  def destroy
    @alianza.destroy
    respond_to do |format|
      format.html { redirect_to alianzas_url, notice: 'Alianza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alianza
      @alianza = Alianza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alianza_params
      params.require(:alianza).permit(:nombre)
    end
end
