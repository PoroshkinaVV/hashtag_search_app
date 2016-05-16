json.array!(@events) do |event|
  json.extract! event, :id, :name, :start_date, :end_date, :description, :renew_period, :user_id
  json.url event_url(event, format: :json)
end
