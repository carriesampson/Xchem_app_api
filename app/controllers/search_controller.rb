class SearchController < ApplicationController
    before_action :set_search, only: [:show, :update, :destroy]

def index
   if params[:query].present?
     brand_search = Brand.search(params[:query])
   else
     @brands = Brand.all
   end
 end
end
