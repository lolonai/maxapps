class Album < ApplicationRecord
  belongs_to :groupe
  has_many :collections
  has_many :photos, through: :collections

  validates :name, presence: true
end
