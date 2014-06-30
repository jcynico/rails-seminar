json.array!(@users) do |user|
  json.extract! user, :id, :name, :password, :age, :address, :introduction, :money
  json.url user_url(user, format: :json)
end
