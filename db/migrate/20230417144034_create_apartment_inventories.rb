class CreateApartmentInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :apartment_inventories do |t|
      t.integer :apartment, null: false, foreign_key: true
      t.integer :inventory, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
