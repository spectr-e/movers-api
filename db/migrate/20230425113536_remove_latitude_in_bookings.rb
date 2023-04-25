class RemoveLatitudeInBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :latitude
  end
end
