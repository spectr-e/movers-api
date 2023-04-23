class User < ApplicationRecord
  has_many :bookings
  has_many :movers, through: :bookings
  has_many :apartments, through: :bookings
  has_many :apartment_inventories, through: :apartments
  has_many :inventories, through: :apartment_inventories

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }

  has_secure_password
end
