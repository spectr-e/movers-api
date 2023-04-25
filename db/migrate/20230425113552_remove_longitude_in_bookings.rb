class RemoveLongitudeInBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :longitude
  end
end
