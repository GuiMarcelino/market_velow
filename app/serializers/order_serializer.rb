class OrderSerializer < ActiveModel::Serializer
  attributes :id, :date_order, :user_id, :product_id
  has_one :product
  has_one :user
end
