class EventSerializer < ActiveModel::Serializer
  attributes  :id, :title, :description, :created_at, :updated_at, :created_by
end