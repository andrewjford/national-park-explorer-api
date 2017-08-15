class Visitorcenter < ApplicationRecord
  validates :name, presence: true
  validates :latLong, presence: true
end
