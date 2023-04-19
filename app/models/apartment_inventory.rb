class ApartmentInventory < ApplicationRecord
    belongs_to :apartment_size
    belongs_to :inventory

    validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end