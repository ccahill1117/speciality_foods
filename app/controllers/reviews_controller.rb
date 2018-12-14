class ReviewsController < ApplicationController

  def show
    
    @product = @review.product
  end

end
