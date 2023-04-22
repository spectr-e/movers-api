class Inventory < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :apartment_inventories

end
