class Event < ApplicationRecord
  has_many :participations
  has_many :users, through: :participations
  
  validates :title, :description, :created_by, presence: true
end
