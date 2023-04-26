class Mover < ApplicationRecord
  has_many :bookings
  has_many :ratings
  has_many :users, through: :bookings
end
