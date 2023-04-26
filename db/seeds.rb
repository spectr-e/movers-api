puts "seeding..."

Box.create(range: "1-5", cost_to_move_boxes: 5000)
Box.create(range: "6-10", cost_to_move_boxes: 7000)
Box.create(range: "11-15", cost_to_move_boxes: 9000)
Box.create(range: "16-20", cost_to_move_boxes: 12_000)
Box.create(range: "21-30", cost_to_move_boxes: 16_000)
Box.create(range: "31-40", cost_to_move_boxes: 20_000)
Box.create(range: "41-50", cost_to_move_boxes: 2500)
Box.create(range: "50+", cost_to_move_boxes: 30_000)



# Create some household inventory items
household_items = [
  { name: "Sofa" },
  { name: "Armchair" },
  { name: "Coffee Table" },
  { name: "TV Stand" },
  { name: "TV" },
  { name: "DVD Player" },
  { name: "Stereo System" },
  { name: "Gaming Console" },
  { name: "Smart Home Devices" },
  { name: "Mirror" },
  { name: "Lamps" },
  { name: "Rugs" },
  { name: "Curtains" },
  { name: "Wall Art" },
  { name: "Bookshelves" },
  { name: "Dining Table" },
  { name: "Chairs" },
  { name: "China Cabinet" },
  { name: "Refrigerator" },
  { name: "Stove" },
  { name: "Microwave" },
  { name: "Coffee Maker" },
  { name: "Oven" },
  { name: "Blender" },
  { name: "Pots and Pans" },
  { name: "Cooking Utensils" },
  { name: "Glassware" },
  { name: "Dishwasher" },
  { name: "Washer" },
  { name: "Dryer" },
  { name: "Bed" },
  { name: "Mattress" },
  { name: "Bedding" },
  { name: "Bathroom Supplies" },
  { name: "Dresser" },
  { name: "Nightstand" },
  { name: "Office Desk" },
  { name: "Office Chair" },
  { name: "Filing Cabinet" },
  { name: "Printer" },
  { name: "Scanner" },
  { name: "Office Supplies" },
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
  { name: "Lawnmower" },
  { name: "Bicycles" },
  { name: "Sports Equipment" },
  { name: "Musical Instruments" }
]

Inventory.create(household_items)

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
    rate_per_km: 500    
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
    rate_per_km: 550    
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
    rate_per_km: 500    
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
    rate_per_km: 450    
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
    rate_per_km: 750    
  },
  {
    name: "Shift Online",
    email: "info@mayflower.com",
    address: "Nairobi, Kenya",
    logo: "https://www.mayflower.com/wp-content/themes/uni-mayflower/dist/images/logo--full-color.svg",
    description: "Here at Shift we move things. We use a set of algorithms which allows you to move your things anywhere in the NK (Nairobi, Kenya), anytime you like.",
    services: "Full-service packing, Access to personal move consultant, Shipment tracking, Two moving insurance options, Vehicle and specialty shipping, Long and short-term storage, Moving supplies",
    availability: "Excellent",
    deposit: false,
    packaging: true,
    rate_per_km: 600    
  },

  ]
)

puts "done seeding!!!"