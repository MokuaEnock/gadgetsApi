class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :message, :rating, :created_at
end
