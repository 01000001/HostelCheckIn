class AddBedLabelToBeds < ActiveRecord::Migration
  def change
    add_column :beds, :bed_label, :string
  end
end
