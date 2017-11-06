class ParticipationSerializer < ActiveModel::Serializer
  attributes  :id, :created_at, :updated_at, :event_id, :user_id
end