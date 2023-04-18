class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :primary_email
      t.string :secondary_email
      t.string :primary_phone_number
      t.string :secondary_phone_number
      t.string :image
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :primary_email, unique: true
    add_index :users, :primary_phone_number, unique: true
  end
end
