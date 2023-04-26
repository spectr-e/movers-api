class Apartment < ApplicationRecord
    validates :size, presence: true
end
