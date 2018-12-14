class ProductsController < ApplicationController

  def index
    @products = Product.most_recent
    @product = Product.new()

  end

  def create
    @product = Product.new(product_params)
    @product.save


    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :country)
  end


end
