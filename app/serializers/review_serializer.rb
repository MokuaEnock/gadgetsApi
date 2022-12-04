class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :message, :rating, :created_at
end
