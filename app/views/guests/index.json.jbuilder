json.array!(@guests) do |guest|
  json.extract! guest, :name, :locker, :nights, :price, :deposit
  json.url guest_url(guest, format: :json)
end
