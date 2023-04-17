class Inventory < ApplicationRecord
    #associations
    has_many :apartment_inventories

    #validations
    validates :name, presence: true, uniqueness: true
end
