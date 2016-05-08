class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  acts_as_messageable required: :body

  acts_as_liker
  acts_as_follower
  acts_as_followable

  has_many :comments

  GENDERS = ['男', '女']

  ASTROS = [
    '白羊座',
    '金牛座',
    '双子座',
    '巨蟹座',
    '狮子座',
    '处女座',
    '天秤座',
    '天蝎座',
    '射手座',
    '摩羯座',
    '水瓶座',
    '双鱼座',
  ]

  validates_length_of :name, maximum: 10, on: :update
  validates_length_of :city, maximum: 10, on: :update
  validates_length_of :intro, maximum: 300, on: :update
  validates_inclusion_of :gender, in: GENDERS, allow_nil: true, on: :update
  validates_inclusion_of :astro, in: ASTROS, allow_nil: true, on: :update

  def likeables_with(klass, like_type)
    klass.where(id: Like.liked_by(self).where(likeable_type: klass.table_name.classify, like_type: like_type).select(:likeable_id))
  end

  def likes_with?(likeable, like_type)
    _like = Like.liked_by(self).liking(likeable).last
    _like.present? && _like.like_type == like_type
  end

  def like_with!(likeable, like_type)
    ActiveRecord::Base.transaction do
      self.like! likeable
      _like = Like.liked_by(self).liking(likeable).last
      _like.like_type = like_type
      raise ActiveRecord::Rollback if !_like.save
    end
  end
end
