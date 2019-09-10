class Collection < ApplicationRecord
  belongs_to :photo
  belongs_to :album

  validates :photo, :album, presence: true
end
