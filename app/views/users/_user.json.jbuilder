json.extract! user, :id, :admin, :email, :name, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
