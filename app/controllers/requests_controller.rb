class RequestsController < ApplicationController
  before_action :authenticate_user!, :except => [:new, :create ]
  load_and_authorize_resource
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    distritos = Ubigeo.where('ug_id = ?', @request.ubigeo_id)
    @distrito = distritos.first
    provincias = Ubigeo.where('ug_id = ?', @distrito.parent_id)
    @provincia = provincias.first
    departamentos = Ubigeo.where('ug_id = ?', @provincia.parent_id)
    @departamento = departamentos.first
    render layout: 'ultra-empty'
  end

  # GET /requests/new
  def new
    session[:request_params] ||= {}
    @request = Request.new(session[:request_params])
    @request.dependents.build
    @request.current_step = session[:request_step]
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    session[:request_params].deep_merge!(request_params) if request_params
    @request = Request.new(session[:request_params])
    @request.current_step = session[:request_step]
    @alianzas = Alianza.all      

    if @request.valid?
      if params[:back_button] 
        if @request.dni
          personas = []
          personas = Reniec.where('doi=?',@request.dni)
          @persona = personas[0]
        end
        @request.previous_step
      elsif @request.last_step?
        @request.save if @request.all_valid?
      else
        if @request.dni
          personas = []
          personas = Reniec.where('doi=?',@request.dni)
          @persona = personas[0]
        end
        @request.next_step  
      end
      session[:request_step] = @request.current_step
    end
    if @request.new_record?
      render :new
    else
      session[:request_step] = session[:request_params] = nil
      redirect_to thanks_path
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search_spouse
  end
  def spouse
    @spouse = Reniec.search(params[:search])
    respond_to do |format|
      format.json { render json: @spouse}
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white listZZZZ through.
    def request_params
      params.require(:request).permit(:status, :dni, :name, :last_name, :second_last_name, :birthday, :genre, :civil_state, :email, :mobile, :telephone, :alianza_id, :alianza_code, :access, :address, :ubigeo_id, :number, :manzana, :lote, :apartment, :urbanization, :property_house, :job_type_id, :job, :profession, :economy_sector_id, :work_years, :job_title, :salary_id, :company, :economy_activity_id, :job_access,  :job_address, :job_number, :job_manzana, :job_lote, :job_apartment, :job_urbanization, :job_telephone, :spouse_doi, :spouse_name, :spouse_last_name, :spouse_second_last_name, :spouse_birthday, :spouse_ocupation, :spouse_profession, :spouse_economy_sector, :patron_doi, :patron_last_name, :patron_name, :patron_mobile, :ruc, :income, :reniec, :pep, :college, :credito, :ahorro, :plazofijo, :contrato, products_id: [],
        dependents_attributes: [ :id, :request_id, :name, :last_name, :second_last_name, :birthdate, :relationship, :_destroy],
        bank_accounts_attributes: [:id, :name, :corriente, :ahorro, :_destroy])
    end
end
