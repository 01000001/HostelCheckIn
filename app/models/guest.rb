class Guest < ActiveRecord::Base
	has_many :bookings, dependent: :destroy
  has_many :beds, through: :bookings
  validates :name, :price, :deposit, :nights, presence: true
	
	def self.search(query)
		# where(:title, query) -> This would return an exact match of the query
		 where("name LIKE ? OR price LIKE ? OR note LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
		
		# This query searches through bookings, has to ask if it's recommended
		# where("name LIKE '%#{query}%' OR price LIKE '%#{query}%' OR note LIKE '%#{query}%'
		# OR id IN (SELECT guest_id FROM bookings WHERE check_in_date LIKE '%#{query}%' OR check_out_date LIKE '%#{query}%')
		# ")
		
	end
  
end
