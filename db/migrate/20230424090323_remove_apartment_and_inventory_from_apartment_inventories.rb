class RemoveApartmentAndInventoryFromApartmentInventories < ActiveRecord::Migration[7.0]
  def change
    remove_column :apartment_inventories, :apartment, :integer
    remove_column :apartment_inventories, :inventory, :integer
  end
end
