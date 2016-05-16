json.array!(@hashtag_events) do |hashtag_event|
  json.extract! hashtag_event, :id, :hashtag_id, :event_id
  json.url hashtag_event_url(hashtag_event, format: :json)
end
