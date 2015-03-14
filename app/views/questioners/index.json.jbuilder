json.array!(@questioners) do |questioner|
  json.extract! questioner, :id, :name, :description, :is_active
  json.url questioner_url(questioner, format: :json)
end
