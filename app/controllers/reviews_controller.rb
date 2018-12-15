class ReviewsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.save

    redirect_to product_path(@product)
  end

  def show
    @review = Review.find(params[:id])
    @product = @review.product

  end


  private
  def review_params
    params.require(:review).permit(:author_name, :rating, :review_text)
  end

end
