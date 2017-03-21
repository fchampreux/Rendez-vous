class MembersController < ApplicationController
    # Check for active session  
#  before_action :signed_in_user

# Retrieve current member
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  # GET /members.json
  def index
    @members = Member.all
  end

  # GET /members/1
  # GET /members/1.json
  def show
    ### Retrieved by Callback function
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
    ### Retrieved by Callback function
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
#    metadata_setup(@member)

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member , notice: 'Member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @member }
      else
        format.html { render action: 'new' }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    ### Retrieved by Callback function
    @member.updated_by = current_user.login

    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member , notice: 'Member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
      @member.active_to = DateTime.now
      @member.save
      redirect_to @member.members_list, notice: 'Member was successfully inactivated.' 
  end

### private functions definitions
  private

  ### Use callbacks to share common setup or constraints between actions.

    # retrieve current member for edit or destroy actions
    def set_member
      @member = Member.pgnd(current_playground).find(params[:id])
    end

  ### before filters

    # Never trust members from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:name, :description, :param_code, :param_value, :active_from, :active_to)
    end

end
