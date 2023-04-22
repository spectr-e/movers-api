class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :add_email
      t.string :add_phone
      t.string :image
      t.string :password_digest

      t.timestamps
    end
  end
end
