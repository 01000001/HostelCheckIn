class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :check_in_date
      t.datetime :check_out_date
      t.belongs_to :guest, index: true
      t.belongs_to :bed, index: true

      t.timestamps
    end
  end
end
