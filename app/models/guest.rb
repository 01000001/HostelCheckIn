class Guest < ActiveRecord::Base
	has_many :bookings, dependent: :destroy
  has_many :beds, through: :bookings
  validates :name, :price, :deposit, :nights, presence: true
end
