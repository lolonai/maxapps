class Groupe < ApplicationRecord
  belongs_to :admin, class_name: 'User', foreign_key: 'user_id'
  has_many :membre
  has_many :users, through: :membre
end