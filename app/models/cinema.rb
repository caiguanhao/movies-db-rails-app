class Cinema < ActiveRecord::Base
  has_many :timetables

  validates_presence_of :name, message: '请输入影院名称'
  validates_presence_of :city, message: '请输入影院所在城市'
  validates_presence_of :content, message: '请输入影院介绍'
end
