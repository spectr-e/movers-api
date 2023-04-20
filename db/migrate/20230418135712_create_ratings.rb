class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :booking_id
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
