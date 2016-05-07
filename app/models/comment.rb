class Comment < ActiveRecord::Base
  belongs_to :movie, required: true
  belongs_to :user, required: true

  validates_numericality_of :rating, only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 1

  after_commit do
    _count = movie.comments.count
    _sum = movie.comments.sum(:rating)
    movie.update_attributes({
      ratings: _sum.to_f / _count.to_f,
      ratings_count: _count,
    })
  end
end
