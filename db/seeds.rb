# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Box.create(range: "1-5", cost_to_move_boxes: 5000)
Box.create(range: "6-10", cost_to_move_boxes: 7000)
Box.create(range: "11-15", cost_to_move_boxes: 9000)
Box.create(range: "16-20", cost_to_move_boxes: 12000)
Box.create(range: "21-30", cost_to_move_boxes: 16000)
Box.create(range: "31-40", cost_to_move_boxes: 20000)
Box.create(range: "41-50", cost_to_move_boxes: 2500)
Box.create(range: "50+", cost_to_move_boxes: 30000)


# Create apartment sizes with labour & cost
ApartmentSize.create(size: 'bedsitter', description: 'A small living space that includes boxed and bag items and a bed', labour: '1', labour_cost: 10000)
ApartmentSize.create(size: '1 bedroom', description: '1 bedroom property that includes boxed and bag items and multiple items of furniture', labour: '2', labour_cost: 15000)
ApartmentSize.create(size: 'studio', description: 'A move with boxes, bags and limited furniture. For example, a bed, wardrobe and kitchenette ', labour: '2', labour_cost: 15000)
ApartmentSize.create(size: '2 bedroom', description: '2 bedroom property that includes boxed and bag items and multiple items of furniture', labour: '4', labour_cost: 18000)

# Create some household inventory items
household_items = [
  { name: "Sofa" },
  { name: "Armchair" },
  { name: "Coffee Table" },
  { name: "TV Stand" },
  { name: "TV" },
  { name: "DVD Player" },
  { name: "Lamps" },
  { name: "Rugs" },
  { name: "Bookshelves" },
  { name: "Dining Table" },
  { name: "Chairs" },
  { name: "Refrigerator" },
  { name: "Stove" },
  { name: "Microwave" },
  { name: "Dishwasher" },
  { name: "Washer" },
  { name: "Dryer" },
  { name: "Bed" },
  { name: "Mattress" },
  { name: "Dresser" },
  { name: "Nightstand" },
  { name: "Desk" },
  { name: "Office Chair" },
  { name: "Storage Boxes" },
  { name: "Vacuum Cleaner" },
  { name: "Iron" },
  { name: "Ironing Board" },
  { name: "Mop" },
  { name: "Broom" },
  { name: "Trash Cans" },
  { name: "Cleaning Supplies" },
  { name: "Tools" },
  { name: "Outdoor Furniture" },
  { name: "Grill" },
  { name: "Garden Tools" },
  { name: "Bicycles" },
  { name: "Sports Equipment" },
  { name: "Musical Instruments" }
]

Inventory.create(household_items)
