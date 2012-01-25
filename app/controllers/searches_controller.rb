class SearchesController < ApplicationController
  
  def index
    if params[:q]
      @results = Product.search(params[:q]).page(params[:page]).per(5)
    end
  end
  
end
