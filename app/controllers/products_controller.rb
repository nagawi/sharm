class ProductsController < ApplicationController
  def index
   @products = Product.page(params[:page])
  end

  def show
  end
end
