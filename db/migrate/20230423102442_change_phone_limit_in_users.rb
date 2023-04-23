class ChangePhoneLimitInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :phone, :string, limit: 20
  end
end
