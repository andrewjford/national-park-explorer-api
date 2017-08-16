class Park < ApplicationRecord
  validates :fullName, presence: true
  validates :latLong, presence: true

  after_initialize :set_defaults

  def set_defaults
    self.rating ||= 3
    self.rating_count ||= 0
  end

  def add_rating(user_rating)
    new_count = self.rating_count + 1
    new_rating = ((self.rating * self.rating_count) + user_rating) / new_count
    #calculate new rating and increase number of ratings
    #update
    if self.update(rating_count: new_count, rating: new_rating)
      return self
    end
  end
end
