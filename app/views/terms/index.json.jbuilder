json.array!(@terms) do |term|
  json.extract! term, :id, :name, :description, :start_date, :end_date, :created_by_id
  json.url term_url(term, format: :json)
end
