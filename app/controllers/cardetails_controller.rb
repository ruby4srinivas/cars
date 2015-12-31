class CardetailsController < ApplicationController
  before_action :set_cardetail, only: [:show, :edit, :update, :destroy]

  # GET /cardetails
  # GET /cardetails.json
  def index
    @cardetails = Cardetail.all
  end

  # GET /cardetails/1
  # GET /cardetails/1.json
  def show
  end

  # GET /cardetails/new
  def new
    @cardetail = Cardetail.new
  end

  # GET /cardetails/1/edit
  def edit
  end

  # POST /cardetails
  # POST /cardetails.json
  def create
    @cardetail = Cardetail.new(cardetail_params)

    respond_to do |format|
      if @cardetail.save
        format.html { redirect_to @cardetail, notice: 'Cardetail was successfully created.' }
        format.json { render :show, status: :created, location: @cardetail }
      else
        format.html { render :new }
        format.json { render json: @cardetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cardetails/1
  # PATCH/PUT /cardetails/1.json
  def update
    respond_to do |format|
      if @cardetail.update(cardetail_params)
        format.html { redirect_to @cardetail, notice: 'Cardetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @cardetail }
      else
        format.html { render :edit }
        format.json { render json: @cardetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cardetails/1
  # DELETE /cardetails/1.json
  def destroy
    @cardetail.destroy
    respond_to do |format|
      format.html { redirect_to cardetails_url, notice: 'Cardetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cardetail
      @cardetail = Cardetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cardetail_params
      params.require(:cardetail).permit(:image, :make_year, :make_car, :model, :price, :price)
    end
end
