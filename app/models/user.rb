class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true
  validates :email, uniqueness: true

  has_many :ratings
  has_many :rated_parks, through: :ratings, source: :park
end
