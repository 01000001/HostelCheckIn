json.array!(@expenses) do |expense|
  json.extract! expense, :name, :value, :shift, :date
  json.url expense_url(expense, format: :json)
end
