class Message < ApplicationRecord
  belongs_to :user
  belongs_to :messagerie

  validates :user, :messagerie, presence: true
end
