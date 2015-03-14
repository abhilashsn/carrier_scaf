json.array!(@seta) do |setum|
  json.extract! setum, :id, :name, :time_limit, :description, :is_active, :display_order
  json.url setum_url(setum, format: :json)
end
