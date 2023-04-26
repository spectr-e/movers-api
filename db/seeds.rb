puts "seeding..."

Box.create(range: "1-5", cost_to_move_boxes: 1000)
Box.create(range: "6-10", cost_to_move_boxes: 2000)
Box.create(range: "11-15", cost_to_move_boxes: 4000)
Box.create(range: "16-20", cost_to_move_boxes: 7000)
Box.create(range: "21-30", cost_to_move_boxes: 11000)
Box.create(range: "31-40", cost_to_move_boxes: 15000)
Box.create(range: "41-50", cost_to_move_boxes: 18000)
Box.create(range: "50+", cost_to_move_boxes: 25000)



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

Apartment.create(
  size: "Bed Sitter",
  description:
    "A small living space that includes boxed and bag items and a bed",
  labour: "1",
  labour_cost: 2000,
)
Apartment.create(
  size: "Studio",
  description:
  "A move with boxes, bags and limited furniture. For example, a bed, wardrobe and kitchenette ",
  labour: "2",
  labour_cost: 5000,
)
Apartment.create(
  size: "One (1) Bedroom",
  description:
    "A one bedroom property that includes boxed and bag items and multiple items of furniture",
  labour: "2",
  labour_cost: 3000,
)
Apartment.create(
  size: "Two (2) Bedroom",
  description:
    "A two bedroom property that includes boxed and bag items and multiple items of furniture",
  labour: "4",
  labour_cost: 7000,
)


Mover.create(
  [{
    name: "Bekins Van Lines",
    email: "info@bekins.com",
    address: "Nairobi, Kenya",
    logo: "https://www.bekins.com/wp-content/themes/bekins-twg/lib/images/logo@2x.png",
    description: "Bekins has been the leading expert in moving for nearly 130 years. We have the experience, skills and resources to make your move quick, efficient and hassle-free. ",
    services: "Full-service packing, Access to personal move consultant, Shipment tracking, Two moving insurance options, Vehicle and specialty shipping, Long and short-term storage, Moving supplies",
    availability: "Excellent",
    deposit: false,
    packaging: true,
    rate_per_km: 300    
  },
  {
    name: "JK Moving",
    email: "info@jkmoving.com",
    address: "Nairobi, Kenya",
    logo: "https://www.jkmoving.com/app/themes/jk-moving/assets/images/jk-moving-logo.svg",
    description: "JK Moving prides itself on its commitment to sustainable business practices and keeping its customers happy, as revealed by its BBB and Google ratings of 4.3 and 4.5, respectively.",
    services: "Full-service packing, Access to personal move consultant, Shipment tracking, Two moving insurance options, Vehicle and specialty shipping, Long and short-term storage, Moving supplies",
    availability: "Excellent",
    deposit: false,
    packaging: true,
    rate_per_km: 350    
  },
  {
    name: "Atlas Van Lines",
    email: "info@atlasvanlines.com",
    address: "Nairobi, Kenya",
    logo: "https://www.atlasvanlines.com/getmedia/49d76d29-7f3f-4d03-bdc9-808b89de801f/logo-atlas-header-mobile.png?width=89&height=88&ext=.png",
    description: "Atlas® strives to inspire meaningful change and create a significant impact in the moving and storage industry by partnering with top-tier associations who align with our company standards.",
    services: "Full-service packing, Access to personal move consultant, Shipment tracking, Two moving insurance options, Vehicle and specialty shipping, Long and short-term storage, Moving supplies",
    availability: "Excellent",
    deposit: false,
    packaging: true,
    rate_per_km: 400    
  },
  {
    name: "Allied Van Lines",
    email: "info@allied.com",
    address: "Nairobi, Kenya",
    logo: "https://mms.businesswire.com/media/20210106005262/en/850390/23/Allied_LogoTag_3C-RGB_0418.jpg",
    description: "Allied Van Lines has the largest mover network in the world combined with over 94 years of experience. Our mission is to provide affordable moving services backed by a name you can trust. We are a company built on a history of service.",
    services: "Full-service packing, Access to personal move consultant, Shipment tracking, Two moving insurance options, Vehicle and specialty shipping, Long and short-term storage, Moving supplies",
    availability: "Excellent",
    deposit: false,
    packaging: true,
    rate_per_km: 300    
  },
  {
    name: "Mayflower Transit",
    email: "info@mayflower.com",
    address: "Nairobi, Kenya",
    logo: "https://www.mayflower.com/wp-content/themes/uni-mayflower/dist/images/logo--full-color.svg",
    description: "Mayflower is a trusted, national moving company for nearly 100 years. Mayflower offers a full line of customizable moving services, and is able to help with moves of any size; no matter where you’re headed to next.",
    services: "Full-service packing, Access to personal move consultant, Shipment tracking, Two moving insurance options, Vehicle and specialty shipping, Long and short-term storage, Moving supplies",
    availability: "Excellent",
    deposit: false,
    packaging: true,
    rate_per_km: 250    
  },
  {
    name: "Shift Online",
    email: "info@shiftonline.com",
    address: "Nairobi, Kenya",
    logo: "https://s3.eu-west-2.amazonaws.com/shift-cockpit/cockpit/storage/uploads/2021/11/16/619378024f019shift-logo.svg",
    description: "Here at Shift we move things. We use a set of algorithms which allows you to move your things anywhere in the NK (Nairobi, Kenya), anytime you like.",
    services: "Full-service packing, Access to personal move consultant, Shipment tracking, Two moving insurance options, Vehicle and specialty shipping, Long and short-term storage, Moving supplies",
    availability: "Excellent",
    deposit: false,
    packaging: true,
    rate_per_km: 400    
  },

  ]
)

puts "done seeding!!!"