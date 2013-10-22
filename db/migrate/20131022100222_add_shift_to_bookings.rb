class AddShiftToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :shift, :string
  end
end
