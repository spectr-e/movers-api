class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :size, :description, :labour, :labour_cost
end
