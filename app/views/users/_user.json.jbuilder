json.extract! user, :id, :display_name, :password, :email, :dob, :created_at, :updated_at
json.url user_url(user, format: :json)
