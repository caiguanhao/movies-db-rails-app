class Timetable < ActiveRecord::Base
  belongs_to :movie
  belongs_to :cinema

  PRICE_PROVIDERS = {
    'baidu': '糯米',
    'meituan': '美团',
  }
end
