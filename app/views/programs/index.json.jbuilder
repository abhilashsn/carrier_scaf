json.array!(@programs) do |program|
  json.extract! program, :id, :name, :description, :is_active
  json.url program_url(program, format: :json)
end
