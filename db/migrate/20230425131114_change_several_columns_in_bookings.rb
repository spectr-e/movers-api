class ChangeSeveralColumnsInBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :mover_id
    remove_column :bookings, :quotation
  end
end
