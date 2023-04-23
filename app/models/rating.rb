class Rating < ApplicationRecord
    belongs_to :booking
  
    validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
    validates :review, presence: true, length: { minimum: 5 }
  end
  