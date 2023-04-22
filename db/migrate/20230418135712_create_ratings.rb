class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.time :book_time
      t.integer :rating, null: false, foreign_key: true
      t.text :review

      t.timestamps
    end
  end
end
