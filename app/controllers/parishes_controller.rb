class ParishesController < ApplicationController
  before_action :set_parish, only: [:show, :edit, :update, :destroy]

  # GET /parishes
  # GET /parishes.json
  def index
    @parishes = Parish.all
  end

  # GET /parishes/1
  # GET /parishes/1.json
  def show
  end

  # GET /parishes/new
  def new
    @parish = Parish.new
    @vicarages = Vicarage.all
    @members = Member.all
  end

  # GET /parishes/1/edit
  def edit
    @vicarages = Vicarage.all
    @members = Member.all
  end

  # POST /parishes
  # POST /parishes.json
  def create
    @parish = Parish.new(parish_params)

    respond_to do |format|
      if @parish.save
        format.html { redirect_to @parish, success: 'La Parroquia fue <strong>registrada</strong> exitosamente.' }
        format.json { render :show, status: :created, location: @parish }
      else
        format.html { render :new }
        format.json { render json: @parish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parishes/1
  # PATCH/PUT /parishes/1.json
  def update 
    respond_to do |format|
      if @parish.update(parish_params)
        format.html { redirect_to @parish, success: 'La parroquia fue <strong>modificada</strong> exitosamete.' }
        format.json { render :show, status: :ok, location: @parish }
      else
        format.html { render :edit }
        format.json { render json: @parish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parishes/1
  # DELETE /parishes/1.json
  def destroy
    @parish.destroy
    respond_to do |format|
      format.html { redirect_to parishes_url, success: 'La parroquia fue <strong>eliminada</strong> exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parish
      @parish = Parish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parish_params
      params.require(:parish).permit(:Name, :address, :managers_id, :vicarage_id)
    end
end
