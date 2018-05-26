class EconomyActivitiesController < ApplicationController
  before_action :set_economy_activity, only: [:show, :edit, :update, :destroy]

  # GET /economy_activities
  # GET /economy_activities.json
  def index
    @economy_activities = EconomyActivity.all
  end

  # GET /economy_activities/1
  # GET /economy_activities/1.json
  def show
  end

  # GET /economy_activities/new
  def new
    @economy_activity = EconomyActivity.new
  end

  # GET /economy_activities/1/edit
  def edit
  end

  # POST /economy_activities
  # POST /economy_activities.json
  def create
    @economy_activity = EconomyActivity.new(economy_activity_params)

    respond_to do |format|
      if @economy_activity.save
        format.html { redirect_to @economy_activity, notice: 'Economy activity was successfully created.' }
        format.json { render :show, status: :created, location: @economy_activity }
      else
        format.html { render :new }
        format.json { render json: @economy_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /economy_activities/1
  # PATCH/PUT /economy_activities/1.json
  def update
    respond_to do |format|
      if @economy_activity.update(economy_activity_params)
        format.html { redirect_to @economy_activity, notice: 'Economy activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @economy_activity }
      else
        format.html { render :edit }
        format.json { render json: @economy_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economy_activities/1
  # DELETE /economy_activities/1.json
  def destroy
    @economy_activity.destroy
    respond_to do |format|
      format.html { redirect_to economy_activities_url, notice: 'Economy activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_economy_activity
      @economy_activity = EconomyActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def economy_activity_params
      params.require(:economy_activity).permit(:name, :ciiu)
    end
end
