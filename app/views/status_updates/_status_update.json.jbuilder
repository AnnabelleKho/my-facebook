json.extract! status_update, :id, :user_id, :title, :content, :created_at, :updated_at
json.url status_update_url(status_update, format: :json)
