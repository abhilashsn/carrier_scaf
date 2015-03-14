json.array!(@questions) do |question|
  json.extract! question, :id, :name, :description, :question_type, :display_order, :is_active
  json.url question_url(question, format: :json)
end
