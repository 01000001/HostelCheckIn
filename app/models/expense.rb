class Expense < ActiveRecord::Base

validates :name, :value, :date, :shift, presence: true

end
