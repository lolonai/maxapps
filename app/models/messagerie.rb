class Messagerie < ApplicationRecord
  belongs_to :groupe
  has_many :users, through: :message
  has_many :messages
end
