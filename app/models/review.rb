class Review < ActiveRecord::Base
  belongs_to :product
  validates :author_name, :rating, :review_text, :presence => true



end
