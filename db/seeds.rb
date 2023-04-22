Box.create(range: "1-5", cost_to_move_boxes: 5000)
Box.create(range: "6-10", cost_to_move_boxes: 7000)
Box.create(range: "11-15", cost_to_move_boxes: 9000)
Box.create(range: "16-20", cost_to_move_boxes: 12_000)
Box.create(range: "21-30", cost_to_move_boxes: 16_000)
Box.create(range: "31-40", cost_to_move_boxes: 20_000)
Box.create(range: "41-50", cost_to_move_boxes: 2500)
Box.create(range: "50+", cost_to_move_boxes: 30_000)

# Create apartment sizes with labour & cost
Apartment.create(
  size: "bedsitter",
  description:
    "A small living space that includes boxed and bag items and a bed",
  labour: "1",
  labour_cost: 10_000,
)
Apartment.create(
  size: "1 bedroom",
  description:
    "1 bedroom property that includes boxed and bag items and multiple items of furniture",
  labour: "2",
  labour_cost: 15_000,
)
Apartment.create(
  size: "studio",
  description:
    "A move with boxes, bags and limited furniture. For example, a bed, wardrobe and kitchenette ",
  labour: "2",
  labour_cost: 15_000,
)
Apartment.create(
  size: "2 bedroom",
  description:
    "2 bedroom property that includes boxed and bag items and multiple items of furniture",
  labour: "4",
  labour_cost: 18_000,
)
