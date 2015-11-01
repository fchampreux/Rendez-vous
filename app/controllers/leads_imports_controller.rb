class LeadsImportsController < ApplicationController
  before_action :set_leads_import, only: [:show, :edit, :update, :destroy]

  # GET /leads_imports
  # GET /leads_imports.json
  def index
    @leads_imports = LeadsImport.all
  end

  # GET /leads_imports/1
  # GET /leads_imports/1.json
  def show
  end

  # GET /leads_imports/new
  def new
    @leads_import = LeadsImport.new
  end

  # GET /leads_imports/1/edit
  def edit
  end

  # POST /leads_imports
  # POST /leads_imports.json
  def create
    @leads_import = LeadsImport.new(leads_import_params)

    respond_to do |format|
      if @leads_import.save
        format.html { redirect_to @leads_import, notice: 'Leads import was successfully created.' }
        format.json { render :show, status: :created, location: @leads_import }
      else
        format.html { render :new }
        format.json { render json: @leads_import.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leads_imports/1
  # PATCH/PUT /leads_imports/1.json
  def update
    respond_to do |format|
      if @leads_import.update(leads_import_params)
        format.html { redirect_to @leads_import, notice: 'Leads import was successfully updated.' }
        format.json { render :show, status: :ok, location: @leads_import }
      else
        format.html { render :edit }
        format.json { render json: @leads_import.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leads_imports/1
  # DELETE /leads_imports/1.json
  def destroy
    @leads_import.destroy
    respond_to do |format|
      format.html { redirect_to leads_imports_url, notice: 'Leads import was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leads_import
      @leads_import = LeadsImport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leads_import_params
      params.require(:leads_import).permit(:title, :name, :first_name, :language, :description, :location, :email, :phone, :URL, :note, :image_URL, :role, :company, :from_date, :job_location, :job_desc, :industry, :cy_number, :cy_street, :cy_address_info, :zip, :PObox, :cy_state, :cy_country)
    end
end
