class Visitorcenter < ApplicationRecord
  validates :name, presence: true
  validates :latLong, presence: true

  scope :of_park, -> (parkCode) { where(parkCode: parkCode) if parkCode.present? }
end
