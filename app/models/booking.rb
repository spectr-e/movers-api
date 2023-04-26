class Booking < ApplicationRecord
  # relationships
  belongs_to :user
  belongs_to :apartment
  belongs_to :box
  belongs_to :mover, optional: true

  def confirmed?
    self.status == true && self.mover_id.present?
  end


  def calculate_distance
    pickup_location = Geocoder.search(self.pickup_address).first.coordinates
    destination_location = Geocoder.search(self.destination_address).first.coordinates
    distance_in_km = Geocoder::Calculations.distance_between(pickup_location, destination_location, units: :km)
    self.distance = distance_in_km
  end

end
