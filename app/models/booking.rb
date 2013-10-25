class Booking < ActiveRecord::Base
  belongs_to :guest
  belongs_to :bed
  validates :bed_id, :guest_id, :status, :shift, presence: true
  
  
  def self.search(query)
		where("status LIKE '%#{query}%' OR check_in_date LIKE '%#{query}%' OR check_out_date LIKE '%#{query}%'
		OR guest_id IN (SELECT id FROM guests WHERE name LIKE '%#{query}%')
		OR bed_id IN (SELECT id FROM beds WHERE bed_label LIKE '%#{query}%')
		")
	end
	
end
