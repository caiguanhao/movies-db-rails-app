class Cinema < ActiveRecord::Base
  has_many :movies, through: :timetables
  has_many :timetables

  scope :of_city, -> (city) { where('city': city) }
  scope :of_district, -> (city) { where('district': district) }

  validates_presence_of :name, message: '请输入影院名称'
  validates_presence_of :city, message: '请输入影院所在城市'
  validates_presence_of :content, message: '请输入影院介绍'

  def self.for_select(city)
    Cinema.of_city(city).select(:id, :name, :district).order(district: :desc, id: :asc).group_by(&:district).
      map { |key, val| ["#{key.presence || '其他'} (#{val.size})", val.map{ |cinema| [cinema.name, cinema.id] }] }.to_h
  end
end
