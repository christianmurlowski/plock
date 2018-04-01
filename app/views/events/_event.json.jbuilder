json.extract! event, :id, :title, :description, :created_at, :updated_at, :created_by
json.url event_url(event, format: :json)
