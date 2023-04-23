class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.string :size
      t.text :description
      t.integer :labour
      t.integer :labour_cost

      t.timestamps
    end
  end
end
