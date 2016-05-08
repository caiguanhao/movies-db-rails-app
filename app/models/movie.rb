class Movie < ActiveRecord::Base
  has_many :cinemas, through: :timetables
  has_many :timetables
  has_many :comments
  has_many :photos

  LIKE_TYPES = {
    'wish'    => '想看',
    'watched' => '看过',
  }

  acts_as_likeable

  scope :joins_timetables_and_cinemas, -> {
    joins(%{INNER JOIN "timetables" ON "timetables"."movie_id" = "movies"."id" \
            INNER JOIN "cinemas" ON "cinemas"."id" = "timetables"."cinema_id"})
  }

  def likes_with(like_type)
    Like.liking(self).where(like_type: like_type)
  end
end
