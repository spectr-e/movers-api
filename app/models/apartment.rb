class Apartment < ApplicationRecord
    has_many :apartment_inventories
    has_many :inventories, through: :apartment_inventories

    validates :size, presence: true

    # By using #freeze, I'm able to create a constant that's actually constant. This time, when I attempt to modify the string, I get a RuntimeError.
    LABOUR_COST = {
        "bedsitter" => 10000,
        "1 bedroom" => 15000,
        "studio" => 15000,
        "2 bedroom" => 18000
    }.freeze

    LABOUR = {
        "bedsitter" => 1,
        "1 bedroom" => 2,
        "studio" => 2,
        "2 bedroom" => 4
    }.freeze
end
