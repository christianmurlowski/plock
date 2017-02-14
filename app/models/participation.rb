class Participation < ApplicationRecord
  belongs_to :event
  belongs_to :user

  scope :owned, -> {
    where(owned: true)
  }
end
