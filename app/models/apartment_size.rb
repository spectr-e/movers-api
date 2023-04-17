class ApartmentSize < ApplicationRecord
    has_many :apartment_inventories
    has_many :inventories, through: :apartment_inventories

    validates :size, presence: true

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
    # validates :labour, presence: true, numericality: { only_integer: true }
    # validates :labour_cost, presence: true, numericality: { only_integer: true }
end
