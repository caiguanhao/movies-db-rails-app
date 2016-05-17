class Movie < ActiveRecord::Base
  has_many :cinemas, through: :timetables
  has_many :timetables
  has_many :comments
  has_many :photos


  ATTRS = {
    star:         '主演',
    director:     '导演',
    writer:       '编剧',
    country:      '国家',
    release_date: '上映',
    runtime:      '片长',
    aka:          '又名',
    genre:        '类型',
  }

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
