class Inventory < ApplicationRecord
    #associations
    has_many :apartment_inventories

    #validations
    validates :name, presence: true
    #search by query parameter and use ILIKE operator for case-insensitive search
    def self.search(query)
        where ('name ILIKE ?', '%#{query}%')
    else
        all
    end
   end
end
