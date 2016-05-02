class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  acts_as_messageable required: :body

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
end
