class CreateApartmentInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :apartment_inventories do |t|
      t.references :apartment, null: false, foreign_key: true
      t.references :inventory, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
