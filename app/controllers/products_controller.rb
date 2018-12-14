class ProductsController < ApplicationController

  def index
    @product = Product.new()
    @products = Product.most_recent
  end

  def create
    @product = Product.new(product_params)
    @product.save
    @products = Product.all()

    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name)
  end


end
