class ChangeEmailColumnsInUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :primary_email
    remove_column :users, :secondary_email
    rename_column :users, :email, :email_old
    add_column :users, :email, :string

    User.reset_column_information
    User.find_each do |user|
      user.update(email: user.email_old)
    end

    remove_column :users, :email_old
  
  end
  

end
