class Apartment < ApplicationRecord
    has_many :apartment_inventories
    has_many :inventories, through: :apartment_inventories
    validates :size, presence: true
end
