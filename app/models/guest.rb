class Guest < ActiveRecord::Base
	has_many :bookings, dependent: :destroy
  has_many :beds, through: :bookings
  validates :name, :price, :deposit, :locker, :payment_method, presence: true
	
	def self.search(query)
		# where(:title, query) -> This would return an exact match of the query
		 where("name LIKE ? OR price LIKE ? OR note LIKE ? OR payment_method LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%")
		
		
	end
  
end
