class Movie < ActiveRecord::Base
  has_many :timetables
  has_many :comments
end
