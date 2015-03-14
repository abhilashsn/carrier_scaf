json.array!(@options) do |option|
  json.extract! option, :id, :answers, :is_correct_answer
  json.url option_url(option, format: :json)
end
