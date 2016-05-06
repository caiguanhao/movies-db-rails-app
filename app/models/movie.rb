class Movie < ActiveRecord::Base
  has_many :cinemas, through: :timetables
  has_many :timetables
  has_many :comments

  scope :joins_timetables_and_cinemas, -> {
    joins(%{INNER JOIN "timetables" ON "timetables"."movie_id" = "movies"."id" \
            INNER JOIN "cinemas" ON "cinemas"."id" = "timetables"."cinema_id"})
  }
end
