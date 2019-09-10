class Membre < ApplicationRecord
  belongs_to :groupe
  belongs_to :user

  validates :user, :groupe, presence: true
end
