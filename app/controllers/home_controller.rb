class HomeController < ApplicationController
  def index
    @movies_current = Movie.joins(:timetables).where('timetables.date': Date.current).uniq
    @movies_future = Movie.joins(:timetables).select('min(timetables.date) as release_date, *').group(:id).having('release_date > ?', Date.current).to_a
    @cinemas = Cinema.
      select('cinemas.*, COUNT(timetables.id) AS ttcount').
      joins(:timetables).
      group('cinemas.id').
      order('ttcount DESC').
      limit(10)
  end
end
