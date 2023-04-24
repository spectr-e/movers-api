class Box < ApplicationRecord
    # validations
    validates :range, presence: true, uniqueness: true
    validates :cost_to_move_boxes, presence: true, numericality: { only_integer: true }

    #scope ordering boxes by numerical vlue of the first digits in range field in ascending order
    scope :ordered_by_range, -> { order(Arel.sql("cast(substring(range, '^[0-9]+') as integer)")) }

end