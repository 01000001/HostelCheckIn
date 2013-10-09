json.array!(@beds) do |bed|
  json.extract! bed, :room, :number
  json.url bed_url(bed, format: :json)
end
