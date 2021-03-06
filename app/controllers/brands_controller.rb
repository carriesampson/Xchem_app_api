class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :update, :destroy]

  # GET /brands
  def index
    brands = if params[:query].present?
      Brand.search(params[:query])
    else
      Brand.all
    end
    render json: brands
  end

  # GET /brands/1
  def show
    brand_chems = @brand.chemicals
    brand_prods = @brand.products
    render json: {brand: @brand, chemicals: brand_chems, products: brand_prods}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brand_params
      params.require(:brand).permit(:BrandName)
    end
end
