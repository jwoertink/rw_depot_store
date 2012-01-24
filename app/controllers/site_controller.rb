class SiteController < ApplicationController
  
  def index
    @products = Product.latest
  end
  
end
