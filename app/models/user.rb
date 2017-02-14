class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :participations
  has_many :events, through: :participations

  has_many :owned_events, -> { where participations: { owned: true } }, through: :participations, source: :event
end
