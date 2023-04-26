class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :apartment, null: false, foreign_key: true
      t.references :mover, foreign_key: true
      t.references :box, null: false, foreign_key: true
      t.string :pickup_address
      t.string :destination_address
      t.integer :distance
      t.datetime :book_date
      t.boolean :status, default: false
      t.integer :quotation
      
      t.timestamps
    end
  end
end
