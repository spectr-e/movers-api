class User < ApplicationRecord
  has_many :bookings
  has_many :movers, through: :bookings
  has_many :apartments, through: :bookings
  has_many :apartment_inventories, through: :apartments
  has_many :inventories, through: :apartment_inventories
end
