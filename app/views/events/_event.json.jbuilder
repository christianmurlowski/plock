json.extract! event, :id, :title, :descirption, :user_id, :good_vote, :bad_vote, :created_at, :updated_at
json.url event_url(event, format: :json)