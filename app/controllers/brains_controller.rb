class BrainsController < ApplicationController
  before_action :set_brain, only: [:show, :update, :destroy]

  # GET /brains
  def index
    @brains = Brain.all

    render json: @brains
  end

  # GET /brains/1
  def show
    render json: @brain
  end

  # POST /brains
  def create
    @brain = Brain.new(brain_params)

    if @brain.save
      render json: @brain, status: :created, location: @brain
    else
      render json: @brain.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /brains/1
  def update
    if @brain.update(brain_params)
      render json: @brain
    else
      render json: @brain.errors, status: :unprocessable_entity
    end
  end

  # DELETE /brains/1
  def destroy
    @brain.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brain
      @brain = Brain.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brain_params
      params.require(:brain).permit(:CDPHId, :ProductName, :CSFId, :CSF, :CompanyId, :CompanyName, :BrandName, :PrimaryCategoryId, :PrimaryCategory, :SubCategoryId, :SubCategory, :CasId, :CasNumber, :ChemicalId, :ChemicalName, :InitialDateReported, :MostRecentDateReported, :DiscontinuedDate, :ChemicalCreatedAt, :ChemicalUpdatedAt, :ChemicalDateRemoved, :ChemicalCount)
    end
end
