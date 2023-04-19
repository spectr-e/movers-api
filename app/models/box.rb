class Box < ApplicationRecord
    validates :range, presence: true
    validates :cost_to_move_boxes, presence: true, numericality: { only_integer: true }
end


# class Box < ApplicationRecord
#     BOX_RANGES = {
#       "1-10" => 5000,
#       "11-20" => 7000,
#       "20-30" => 12000,
#       "30-50" => 20000,
#       "50+" => 30000
#     }.freeze

#     def cost_to_move
#       BOX_RANGES[range]
#     end
# end
