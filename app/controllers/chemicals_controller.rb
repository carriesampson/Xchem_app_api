class ChemicalsController < ApplicationController
  before_action :set_chemical, only: [:show, :update, :destroy]

  # GET /chemicals
  def index
    @chemicals = Chemical.all

    render json: @chemicals
  end

  # # GET /chemicals/1
  # def show
  #   render json: @chemical
  # end
  #
  # # POST /chemicals
  # def create
  #   @chemical = Chemical.new(chemical_params)
  #
  #   if @chemical.save
  #     render json: @chemical, status: :created, location: @chemical
  #   else
  #     render json: @chemical.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # PATCH/PUT /chemicals/1
  # def update
  #   if @chemical.update(chemical_params)
  #     render json: @chemical
  #   else
  #     render json: @chemical.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # DELETE /chemicals/1
  # def destroy
  #   @chemical.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chemical
      @chemical = Chemical.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chemical_params
      params.require(:chemical).permit(:ChemicalName)
    end
end
