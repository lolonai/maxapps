class Event < ApplicationRecord
  belongs_to :calendrier
  belongs_to :photo
  belongs_to :album
end
