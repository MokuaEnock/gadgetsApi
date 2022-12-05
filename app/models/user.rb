class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_many :reviews
  has_many :products, through: :reviews
end
