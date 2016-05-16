json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :last_name, :first_name, :second_name, :password_digest
  json.url user_url(user, format: :json)
end
