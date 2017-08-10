class Park < ApplicationRecord
  validates [:lat_long, :full_name], presence: true
  
end
