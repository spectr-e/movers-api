class Inventory < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :apartment_inventories


    #validations
    validates :name, presence: true
    #search by query parameter and use ILIKE operator for case-insensitive search
    def self.search(query)
        if query.present?
          where('name ILIKE ?', "%#{query}%")
        else
          all
        end
      end
    end



