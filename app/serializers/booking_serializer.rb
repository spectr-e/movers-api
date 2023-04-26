class BookingSerializer < ActiveModel::Serializer
  attributes :id, :pickup_address, :destination_address, :book_date
  belongs_to :apartment
  belongs_to :user
  belongs_to :box

end
