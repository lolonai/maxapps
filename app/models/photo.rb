class Photo < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :groupe

  validates :user, :groupe, presence: true
end
