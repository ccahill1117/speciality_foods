class ProductsController < ApplicationController

  def index
    @products = Product.most_recent
    @product = Product.new()

  end

  def index2
    @products = Product.most_recent_all
    render :index2
  end

  def create
    @product = Product.new(product_params)
    @product.save


    redirect_to products_path
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews
  end


  private
  def product_params
    params.require(:product).permit(:name, :cost, :country)
  end


end
