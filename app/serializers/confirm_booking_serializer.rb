class ConfirmBookingSerializer < ActiveModel::Serializer
  attributes :id, :pickup_address, :destination_address, :book_date, :quotation, :status
  belongs_to :apartment
  belongs_to :user
  belongs_to :box
  belongs_to :mover
end
