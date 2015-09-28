class GroupYouthsController < ApplicationController
  before_action :set_group_youth, only: [:show, :edit, :update, :destroy]

  # GET /group_youths
  # GET /group_youths.json
  def index
    @group_youths = GroupYouth.all
  end

  # GET /group_youths/1
  # GET /group_youths/1.json
  def show
  end

  # GET /group_youths/new
  def new
    @group_youth = GroupYouth.new
  end

  # GET /group_youths/1/edit
  def edit
  end

  # POST /group_youths
  # POST /group_youths.json
  def create
    @group_youth = GroupYouth.new(group_youth_params)

    respond_to do |format|
      if @group_youth.save
        format.html { redirect_to @group_youth, success: 'El grupo fue <strong>registrado</strong> exitosamente.' }
        format.json { render :show, status: :created, location: @group_youth }
      else
        format.html { render :new }
        format.json { render json: @group_youth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_youths/1
  # PATCH/PUT /group_youths/1.json
  def update
    respond_to do |format|
      if @group_youth.update(group_youth_params)
        format.html { redirect_to @group_youth, success: 'El grupo fue <strong>modificado</strong> exitosamente.' }
        format.json { render :show, status: :ok, location: @group_youth }
      else
        format.html { render :edit }
        format.json { render json: @group_youth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_youths/1
  # DELETE /group_youths/1.json
  def destroy
    @group_youth.destroy
    respond_to do |format|
      format.html { redirect_to group_youths_url, success: 'El grupo fue <strong>eliminado</strong> exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_youth
      @group_youth = GroupYouth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_youth_params
      params.require(:group_youth).permit(:Name, :gatheringPlace, :schedules, :managers_id, :creationDate, :parish_id)
    end
end
