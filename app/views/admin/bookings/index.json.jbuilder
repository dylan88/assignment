json.array!(@bookings) do |booking|
  json.extract! booking, :id, :course, :day, :hour, :name, :email, :phone, :membership
  json.url booking_url(booking, format: :json)
end
