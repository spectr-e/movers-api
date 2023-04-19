class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :user_id
      t.string :mover_id
      t.string :apartment_size_id
      t.string :rating_id
      t.string :box_id
      t.string :pickup_address
      t.string :destination_address
      t.integer :distance
      t.date :book_date
      t.time :book_time
      t.integer :quotation

      t.timestamps
    end
  end
end
