class HomeController < ApplicationController
  def index
    @movies_current = Movie.joins(:timetables).where('timetables.date': Date.current).uniq
    @movies_future = Movie.
      joins(:timetables).
      select('min(timetables.date) as release_date, movies.*').
      group(:id).
      having('release_date > ?', Date.current).
      order('release_date ASC').
      to_a
    @cinemas_by_districts = Cinema.
      select(:district).
      uniq.
      pluck(:district).
      reject(&:empty?)
  end
end
