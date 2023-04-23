class ChangeAddPhoneLimitInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :add_phone, :string, limit: 20
  end
end
