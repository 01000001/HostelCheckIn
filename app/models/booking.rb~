class Booking < ActiveRecord::Base
  belongs_to :guest
  belongs_to :bed
  validates :bed_id, :guest_id, :status, :shift, presence: true
  
  
  def self.search(query)
		# where(:title, query) -> This would return an exact match of the query
		# where("status LIKE ? OR check_in_date LIKE ? OR check_out_date LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
		# where("guest_id IN (SELECT id FROM guests WHERE name LIKE ?)", "%#{query}%")
		where("status LIKE '%#{query}%' OR check_in_date LIKE '%#{query}%' OR check_out_date LIKE '%#{query}%'
		OR guest_id IN (SELECT id FROM guests WHERE name LIKE '%#{query}%')
		OR bed_id IN (SELECT id FROM beds WHERE bed_label LIKE '%#{query}%')
		")
	end
	
end
