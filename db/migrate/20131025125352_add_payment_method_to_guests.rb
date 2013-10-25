class AddPaymentMethodToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :payment_method, :string
  end
end
