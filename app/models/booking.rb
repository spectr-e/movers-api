class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :mover
    belongs_to :apartment
    belongs_to :rating
    belongs_to :box
  
    validates :user_id, :mover_id, :apartment_size_id, :rating_id, :box_id, presence: true
    validates :distance, :quotation, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :pickup_address, :destination_address, presence: true
    validates :book_date, :book_time, presence: true
  
    def self.search(search)
      if search
        where('pickup_address LIKE ? OR destination_address LIKE ?', "%#{search}%", "%#{search}%")
      else
        all
      end
    end
end

