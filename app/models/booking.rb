class Booking < ApplicationRecord
  # relationships
  belongs_to :user
  belongs_to :apartment
  belongs_to :box

  # # validations
  # validates :user_id, :mover_id, :apartment_id, :box_id, presence: true
  # validates :pickup_address, :destination_address, presence: true
  # validates :book_date, presence: true

  
  def calculate_distance
    pickup_location = Geocoder.search(self.pickup_address).first.coordinates
    destination_location = Geocoder.search(self.destination_address).first.coordinates
    distance_in_km = Geocoder::Calculations.distance_between(pickup_location, destination_location, units: :km)
    self.distance = distance_in_km
  end

end
