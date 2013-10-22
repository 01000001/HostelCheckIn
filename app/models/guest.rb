class Guest < ActiveRecord::Base
	has_many :bookings, dependent: :destroy
  has_many :beds, through: :bookings
  validates :name, :price, :deposit, :nights, presence: true
  
		# def self.search(search)
	#  		search_condition = "%" + search + "%"
	#  		find(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
	#	end
	
	def self.search(search)
		where(:name, search) #-> This would return an exact match of the query
		#search_condition = "%#{query}%"
		#where("name LIKE ?", search_condition) 
	end
  
end
