class User < ApplicationRecord
  has_many :bookings
  has_many :ratings
  has_many :movers, through: :bookings

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }

  has_secure_password
end
