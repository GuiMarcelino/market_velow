class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :code_bar, :price, :user_id
  has_one :user

end
