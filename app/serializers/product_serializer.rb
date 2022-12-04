class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category, :image, :price, :created_at

  has_many :reviews
end
