class CreateMovers < ActiveRecord::Migration[7.0]
  def change
    create_table :movers do |t|
      t.string :name
      t.string :email
      t.string :logo
      t.string :address
      t.text :description
      t.text :services
      t.string :availability, default: "Excellent"
      t.boolean :deposit
      t.boolean :packaging
      t.integer :rate_per_km

      t.timestamps
    end
  end
end
