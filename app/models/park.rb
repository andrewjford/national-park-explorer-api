class Park < ApplicationRecord
  validates :fullName, presence: true
  validates :latLong, presence: true

end
