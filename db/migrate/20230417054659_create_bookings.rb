class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :user_id, null: false, foreign_key: true
      t.string :mover_id, null: false, foreign_key: true
      t.string :apartment_id, null: false, foreign_key: true
      t.string :rating_id, null: false, foreign_key: true
      t.string :box_id, null: false, foreign_key: true
      t.string :pickup_address
      t.string :destination_address
      t.integer :distance
      t.datetime :book_date
      t.integer :quotation

      t.timestamps
    end
  end
end
