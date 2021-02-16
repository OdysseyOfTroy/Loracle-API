json.extract! container, :id, :title, :description, :created_at, :updated_at, :user_id
json.url container_url(container, format: :json)
