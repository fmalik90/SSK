class AddSeatToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :seat, :integer
  end
end
