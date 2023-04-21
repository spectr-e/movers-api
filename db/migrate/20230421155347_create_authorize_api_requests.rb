class CreateAuthorizeApiRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :authorize_api_requests do |t|

      t.timestamps
    end
  end
end
