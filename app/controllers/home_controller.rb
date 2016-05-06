class HomeController < ApplicationController
  def index
    if params[:city].present?
      session[:city] = params[:city]
      return redirect_to :back
    end

    @movies_current = Movie.
      joins_timetables_and_cinemas.
      where('timetables.date': Date.current).
      where('cinemas.city': current_city).
      uniq
    @movies_future = Movie.
      joins_timetables_and_cinemas.
      select('min(timetables.date) as first_timetable_date, movies.*').
      where('cinemas.city': current_city).
      group(:id).
      having('first_timetable_date > ?', Date.current).
      order('first_timetable_date ASC').
      to_a
    @cinemas_by_districts = Cinema.
      where(city: current_city).
      select(:district).
      uniq.
      pluck(:district).
      reject(&:empty?)
  end
end
