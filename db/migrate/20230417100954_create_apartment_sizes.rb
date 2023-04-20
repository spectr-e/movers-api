class CreateApartmentSizes < ActiveRecord::Migration[7.0]
  def change
    create_table :apartment_sizes do |t|
      t.string :size
      t.text :description
      t.integer :labour
      t.integer :labour_cost

      t.timestamps
    end
  end
end
