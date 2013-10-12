class Bed < ActiveRecord::Base
	has_many :bookings, dependent: :destroy
  has_many :guests, through: :bookings
end
