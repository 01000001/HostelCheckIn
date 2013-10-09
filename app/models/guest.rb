class Guest < ActiveRecord::Base
	has_many :bookings
  has_many :beds, through: :bookings
end
