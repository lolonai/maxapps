class Membre < ApplicationRecord
  belongs_to :groupe
  belongs_to :user
end
