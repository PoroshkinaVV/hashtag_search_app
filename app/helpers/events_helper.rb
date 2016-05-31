module EventsHelper
  def user_options(selected)
    options_for_select(User.all.map { |user| ["#{user.username}", 
user.id] }, selected)
  end
end
