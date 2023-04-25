class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :mover
    belongs_to :apartment
    belongs_to :rating
    belongs_to :box
  
    validates :user_id, :mover_id, :apartment_id, :box_id, presence: true
    validates :pickup_address, :destination_address, presence: true
    validates :book_date, :book_time, presence: true
  
    def calculate_quotation_amount
      # get the cost of boxes based on the inventory_id and range of boxes selected
      box_cost = self.box.cost_to_move_boxes || 0
      
      # get the labour cost based on the apartment_type selected
      labour_cost = self.apartment.labour_cost || 0
      
      # calculate the total quotation amount based on the distance and rate per km
      self.quotation_amount = self.distance_to_move * self.mover.rate_per_km
      
      # add the box cost and labour cost to the quotation amount
      self.quotation_amount += box_cost + labour_cost
      
      self.save
    end
end

