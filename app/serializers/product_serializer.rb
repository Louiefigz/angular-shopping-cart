class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description

  has_one :cart


end
