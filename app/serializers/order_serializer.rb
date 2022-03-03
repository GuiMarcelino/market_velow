class OrderSerializer < ActiveModel::Serializer
  attributes :id, :value_total
  has_one :user
  has_one :product
end
