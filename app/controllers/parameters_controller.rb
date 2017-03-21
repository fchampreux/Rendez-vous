class ParametersController < ApplicationController
# Check for active session  
  before_action :signed_in_user

# Retrieve current parameter
  before_action :set_parameter, only: [:show, :edit, :update, :destroy]

  # GET /parameters
  # GET /parameters.json
  def index
    @parameters = Parameter.all
  end

  # GET /parameters/1
  # GET /parameters/1.json
  def show
    ### Retrieved by Callback function
  end

  # GET /parameters/new
  def new
    @parameters_list = ParametersList.find(params[:parameters_list_id])
    @parameter = Parameter.new
  end

  # GET /parameters/1/edit
  def edit
    ### Retrieved by Callback function
  end

  # POST /parameters
  # POST /parameters.json
  def create
    @parameters_list = ParametersList.find(params[:parameters_list_id])
    @parameter = @parameters_list.parameters.build(parameter_params)
    metadata_setup(@parameter)

    respond_to do |format|
      if @parameter.save
        format.html { redirect_to @parameter.parameters_list , notice: 'Parameter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @parameter }
      else
        format.html { render action: 'new' }
        format.json { render json: @parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parameters/1
  # PATCH/PUT /parameters/1.json
  def update
    ### Retrieved by Callback function
    @parameter.updated_by = current_user.login

    respond_to do |format|
      if @parameter.update(parameter_params)
        format.html { redirect_to @parameter.parameters_list , notice: 'Parameter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parameters/1
  # DELETE /parameters/1.json
  def destroy
      @parameter.active_to = DateTime.now
      @parameter.save
      redirect_to @parameter.parameters_list, notice: 'Parameter was successfully inactivated.' 
  end

### private functions definitions
  private

  ### Use callbacks to share common setup or constraints between actions.

    # retrieve current parameter for edit or destroy actions
    def set_parameter
      @parameter = Parameter.pgnd(current_playground).find(params[:id])
    end

  ### before filters

    # Never trust parameters from the scary internet, only allow the white list through.
    def parameter_params
      params.require(:parameter).permit(:name, :description, :param_code, :param_value, :active_from, :active_to)
    end
end
