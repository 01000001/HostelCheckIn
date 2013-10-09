class Booking < ActiveRecord::Base
  belongs_to :guest
  belongs_to :bed
  validates :bed_id, :guest_id, presence: true
end
