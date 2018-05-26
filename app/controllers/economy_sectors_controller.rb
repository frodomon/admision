class EconomySectorsController < ApplicationController
  before_action :set_economy_sector, only: [:show, :edit, :update, :destroy]

  # GET /economy_sectors
  # GET /economy_sectors.json
  def index
    @economy_sectors = EconomySector.all
  end

  # GET /economy_sectors/1
  # GET /economy_sectors/1.json
  def show
  end

  # GET /economy_sectors/new
  def new
    @economy_sector = EconomySector.new
  end

  # GET /economy_sectors/1/edit
  def edit
  end

  # POST /economy_sectors
  # POST /economy_sectors.json
  def create
    @economy_sector = EconomySector.new(economy_sector_params)

    respond_to do |format|
      if @economy_sector.save
        format.html { redirect_to @economy_sector, notice: 'Economy sector was successfully created.' }
        format.json { render :show, status: :created, location: @economy_sector }
      else
        format.html { render :new }
        format.json { render json: @economy_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /economy_sectors/1
  # PATCH/PUT /economy_sectors/1.json
  def update
    respond_to do |format|
      if @economy_sector.update(economy_sector_params)
        format.html { redirect_to @economy_sector, notice: 'Economy sector was successfully updated.' }
        format.json { render :show, status: :ok, location: @economy_sector }
      else
        format.html { render :edit }
        format.json { render json: @economy_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economy_sectors/1
  # DELETE /economy_sectors/1.json
  def destroy
    @economy_sector.destroy
    respond_to do |format|
      format.html { redirect_to economy_sectors_url, notice: 'Economy sector was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_economy_sector
      @economy_sector = EconomySector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def economy_sector_params
      params.require(:economy_sector).permit(:name)
    end
end
