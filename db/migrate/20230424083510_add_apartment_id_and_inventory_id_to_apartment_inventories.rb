class AddApartmentIdAndInventoryIdToApartmentInventories < ActiveRecord::Migration[7.0]
  def change
    add_column :apartment_inventories, :apartment_id, :integer
    add_index :apartment_inventories, :apartment_id
    add_column :apartment_inventories, :inventory_id, :integer
    add_index :apartment_inventories, :inventory_id
  end
end
