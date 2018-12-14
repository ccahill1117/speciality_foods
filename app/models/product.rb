class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :cost, :country, :presence => true

  scope :most_recent, -> {(
    order(created_at: :desc)
    .limit(3)
    )}

    scope :most_recent_all, -> {(
      order(created_at: :desc)
      )}

end
