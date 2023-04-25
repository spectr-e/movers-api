class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :size, :description, :labour, :labour_cost

  has_many :inventories
end
