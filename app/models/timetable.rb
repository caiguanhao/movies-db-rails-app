class Timetable < ActiveRecord::Base
  belongs_to :movie
  belongs_to :cinema

  scope :of_city, -> (city) { joins(:cinema).where('cinemas.city': city) }

  PRICE_PROVIDERS = {
    'baidu':   '糯米',
    'meituan': '美团',
  }
end
