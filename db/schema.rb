# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_18_162053) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "logo"
    t.string "address"
    t.text "description"
    t.text "services_offered"
    t.string "availability"
    t.boolean "deposit_req"
    t.boolean "full_packaging"
    t.integer "rate_per_kilometer"

  create_table "apartment_inventories", force: :cascade do |t|
    t.integer "apartment_size_id"
    t.integer "inventory_id"
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apartment_sizes", force: :cascade do |t|
    t.string "size"
    t.text "description"
    t.integer "labour"
    t.integer "labour_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "primary_email"
    t.string "secondary_email"
    t.string "primary_phone_number"
    t.string "secondary_phone_number"
    t.string "image"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["primary_email"], name: "index_users_on_primary_email", unique: true
    t.index ["primary_phone_number"], name: "index_users_on_primary_phone_number", unique: true

  create_table "boxes", force: :cascade do |t|
    t.string "range"
    t.integer "cost_to_move_boxes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  
  create_table "inventories", force: :cascade do |t|
    t.string "name"
    
  create_table "bookings", force: :cascade do |t|
    t.string "user_id"
    t.string "mover_id"
    t.string "apartment_size_id"
    t.string "rating_id"
    t.string "box_id"
    t.string "pickup_address"
    t.string "destination_address"
    t.integer "distance"
    t.date "book_date"
    t.time "book_time"
    t.integer "quotation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
