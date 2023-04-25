class Booking < ApplicationRecord
  # relationships
  belongs_to :user
  belongs_to :mover
  belongs_to :apartment
  belongs_to :rating
  belongs_to :box

  # validations
  validates :user_id, :mover_id, :apartment_id, :box_id, presence: true
  validates :pickup_address, :destination_address, presence: true
  validates :book_date, :book_time, presence: true

  # geocoder
  geocoded_by :pickup_address
  geocoded_by :destination_address,
              latitude: :destination_latitude,
              longitude: :destination_longitude
  after_validation :geocode_pickup_address,
                   if: :will_save_change_to_pickup_address?
  after_validation :geocode_destination_address,
                   if: :will_save_change_to_destination_address?

  private

  # distance calculation
  def geocode_pickup_address
    geocode_address(:pickup_address)
  end

  def geocode_destination_address
    geocode_address(:destination_address)
  end

  def geocode_address(address_column)
    geocoded = Geocoder.search(self[address_column]).first
    if geocoded
      self.send("#{address_column}_latitude=", geocoded.latitude)
      self.send("#{address_column}_longitude=", geocoded.longitude)
      calculate_distance
    end
  end

  def calculate_distance
    if self.pickup_address_latitude.present? &&
         self.pickup_address_longitude.present? &&
         self.destination_address_latitude.present? &&
         self.destination_address_longitude.present?
      move_distance =
        Geocoder::Calculations.distance_between(
          [self.pickup_address_latitude, self.pickup_address_longitude],
          [
            self.destination_address_latitude,
            self.destination_address_longitude,
          ],
        )
      self.distance = move_distance.round(2)
    end
  end

  # quotation calculation
  def calculate_quotation_amount
    # get the cost of boxes based on the inventory_id and range of boxes selected
    box_cost = self.box.cost_to_move_boxes || 0

    # get the labour cost based on the apartment_type selected
    labour_cost = self.apartment.labour_cost || 0

    # calculate the total quotation amount based on the distance and rate per km
    self.quotation_amount = self.distance * self.mover.rate_per_km

    # add the box cost and labour cost to the quotation amount
    self.quotation_amount += box_cost + labour_cost

    self.save
  end
end
