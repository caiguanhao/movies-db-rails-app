class TimetablesController < ApplicationController
  before_action :set_movie, only: [:new, :create, :destroy]

  def new
    @timetable = @movie.timetables.new
  end

  def create
    @timetable = @movie.timetables.new(timetable_params)

    if @timetable.save
      redirect_to movie_path(@movie), notice: 'Timetable was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @movie.timetables.find(params[:id]).destroy
    redirect_to movie_path(@movie), notice: 'Timetable was successfully destroyed.'
  end

  private
    def set_movie
      @movie = Movie.find(params[:movie_id])
    end

    def timetable_params
      params.require(:timetable).permit(:date, :time, :cinema_id)
    end
end
