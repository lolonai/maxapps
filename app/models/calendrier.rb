class Calendrier < ApplicationRecord
  belongs_to :groupe
  has_many :events
  validates :groupe, presence: true
end
