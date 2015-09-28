class VicaragesController < ApplicationController
  before_action :set_vicarage, only: [:show, :edit, :update, :destroy]

  # GET /vicarages
  # GET /vicarages.json
  def index
    @vicarages = Vicarage.all
  end

  # GET /vicarages/1
  # GET /vicarages/1.json
  def show
  end

  # GET /vicarages/new
  def new
    @vicarage = Vicarage.new
  end

  # GET /vicarages/1/edit
  def edit
  end

  # POST /vicarages
  # POST /vicarages.json
  def create
    @vicarage = Vicarage.new(vicarage_params)

    respond_to do |format|
      if @vicarage.save
        format.html { redirect_to @vicarage, success: 'La Vicaría fue <strong>registrada</strong> exitosamente.' }
        format.json { render :show, status: :created, location: @vicarage }
      else
        format.html { render :new }
        format.json { render json: @vicarage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vicarages/1
  # PATCH/PUT /vicarages/1.json
  def update
    respond_to do |format|
      if @vicarage.update(vicarage_params)
        format.html { redirect_to @vicarage, success: 'La Vicaría fue <strong>modificada</strong> exitosamente.' }
        format.json { render :show, status: :ok, location: @vicarage }
      else
        format.html { render :edit }
        format.json { render json: @vicarage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vicarages/1
  # DELETE /vicarages/1.json
  def destroy
    @vicarage.destroy
    respond_to do |format|
      format.html { redirect_to vicarages_url, success: 'La Vicaría fue <strong>eliminada</strong> exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vicarage
      @vicarage = Vicarage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vicarage_params
      params.require(:vicarage).permit(:Name, :managers_id)
    end
end
