class CreateApartmentInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :apartment_inventories do |t|
      t.integer :apartment_size_id
      t.integer :inventory_id
      t.string :quantity

      t.timestamps
    end
  end
end
