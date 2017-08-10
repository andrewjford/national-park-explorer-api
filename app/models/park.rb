class Park < ApplicationRecord
  validates :full_name, presence: true
  validates :lat_long, presence: true

end
