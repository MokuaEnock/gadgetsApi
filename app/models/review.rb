class Review < ApplicationRecord
  validates :message, presence: true
  validates :rating,
            presence: true,
            numericality: {
              greater_than_or_equal_to: 1,
              less_than_or_equal_to: 5
            }
  validates :product_id, presence: true
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :product
end
