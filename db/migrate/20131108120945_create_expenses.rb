class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.integer :value
      t.string :shift
      t.datetime :date

      t.timestamps
    end
  end
end
