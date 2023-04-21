class CreateAuthorizepiRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :authorizepi_requests do |t|

      t.timestamps
    end
  end
end
