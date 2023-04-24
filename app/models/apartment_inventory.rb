class ApartmentInventory < ApplicationRecord
    belongs_to :apartment, foreign_key: "apartment_id"
    belongs_to :inventory, foreign_key: "inventory_id"

    validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end
