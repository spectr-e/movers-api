class CreateMovers < ActiveRecord::Migration[7.0]
  def change
    create_table :movers do |t|
      t.string :name
      t.string :email
      t.string :logo
      t.string :address
      t.text :description
      t.text :services_offered
      t.string :availability
      t.boolean :deposit_req
      t.boolean :full_packaging
      t.integer :rate_per_kilometer

      t.timestamps
    end
  end
end
