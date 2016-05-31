module HashtagEventsHelper
  def event_options(selected)
    options_for_select(Event.all.map { |event| ["#{event.name}", event.id] }, selected)
  end

  def hashtag_options(selected)
    options_for_select(Hashtag.all.map { |hashtag| ["#{hashtag.name}", hashtag.id] }, selected)
  end
end
