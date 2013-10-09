class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.integer :locker
      t.integer :nights
      t.integer :price
      t.integer :deposit

      t.timestamps
    end
  end
end
