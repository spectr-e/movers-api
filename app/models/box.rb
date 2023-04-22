class Box < ApplicationRecord
    validates :range, presence: true
    validates :cost_to_move_boxes, presence: true, numericality: { only_integer: true }
end