class CreateBeds < ActiveRecord::Migration
  def change
    create_table :beds do |t|
      t.string :room
      t.integer :number

      t.timestamps
    end
  end
end
