class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone, limit: 20
      t.string :add_email
      t.string :add_phone, limit:20
      t.string :image
      t.string :password_digest

      t.timestamps
    end
  end
end
