class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :image, :add_email, :add_phone
end
