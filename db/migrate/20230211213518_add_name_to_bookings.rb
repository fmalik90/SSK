class AddNameToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :name, :string
  end
end
