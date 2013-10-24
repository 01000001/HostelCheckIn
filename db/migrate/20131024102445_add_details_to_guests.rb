class AddDetailsToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :note, :string
    add_column :guests, :nationality, :string
    add_column :guests, :passport_number, :string
  end
end
