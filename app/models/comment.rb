class Comment < ActiveRecord::Base
  belongs_to :movie, required: true
  belongs_to :user, required: true

  validates_numericality_of :rating, only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 1

  after_commit do
    movie.update_ratings!
  end
end
