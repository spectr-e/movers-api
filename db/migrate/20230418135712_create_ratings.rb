class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.string :booking_id, null: false, foreign_key: true
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
