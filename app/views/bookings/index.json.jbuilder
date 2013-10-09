json.array!(@bookings) do |booking|
  json.extract! booking, :check_in_date, :check_out_date, :guest_id, :bed_id
  json.url booking_url(booking, format: :json)
end
