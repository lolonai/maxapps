class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :groupe

  validates :user, :goupe, presence: true
end
