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

ActiveRecord::Schema[7.0].define(version: 2023_04_25_131114) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartment_inventories", force: :cascade do |t|
    t.bigint "apartment_id", null: false
    t.bigint "inventory_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_id"], name: "index_apartment_inventories_on_apartment_id"
    t.index ["inventory_id"], name: "index_apartment_inventories_on_inventory_id"
  end

  create_table "apartments", force: :cascade do |t|
    t.string "size"
    t.text "description"
    t.integer "labour"
    t.integer "labour_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string "user_id", null: false
    t.string "apartment_id", null: false
    t.string "box_id", null: false
    t.string "pickup_address"
    t.string "destination_address"
    t.integer "distance"
    t.datetime "book_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boxes", force: :cascade do |t|
    t.string "range"
    t.integer "cost_to_move_boxes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "logo"
    t.string "address"
    t.text "description"
    t.text "services"
    t.string "availability", default: "Excellent"
    t.boolean "deposit"
    t.boolean "packaging"
    t.integer "rate_per_km"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.integer "rating"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "mover_id", null: false
    t.index ["booking_id"], name: "index_ratings_on_booking_id"
    t.index ["mover_id"], name: "index_ratings_on_mover_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone", limit: 20
    t.string "add_email"
    t.string "add_phone", limit: 20
    t.string "image"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "apartment_inventories", "apartments"
  add_foreign_key "apartment_inventories", "inventories"
  add_foreign_key "ratings", "bookings"
  add_foreign_key "ratings", "movers"
  add_foreign_key "ratings", "users"
end
