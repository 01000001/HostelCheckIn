class RemoveNightsFromGuests < ActiveRecord::Migration
  def change
    remove_column :guests, :nights, :integer
  end
end
