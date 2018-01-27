class AdditivesController < ApplicationController
  before_action :set_additive, only: [:show, :update, :destroy]

  # GET /additives
  def index
    @additives = Additive.all

    render json: @additives
  end

  # GET /additives/1
  def show
    render json: @additive
  end

  # POST /additives
  def create
    @additive = Additive.new(additive_params)

    if @additive.save
      render json: @additive, status: :created, location: @additive
    else
      render json: @additive.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /additives/1
  def update
    if @additive.update(additive_params)
      render json: @additive
    else
      render json: @additive.errors, status: :unprocessable_entity
    end
  end

  # DELETE /additives/1
  def destroy
    @additive.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_additive
      @additive = Additive.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def additive_params
      params.require(:additive).permit(:CSFName)
    end
end
