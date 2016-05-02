class TimetablesController < ApplicationController
  before_action :set_movie, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_timetable, only: [:edit, :update, :destroy]

  before_action :authenticate_admin!, only: [:new, :edit, :create, :destroy]

  def new
    @timetable = @movie.timetables.new
  end

  def create
    @timetable = @movie.timetables.new(timetable_params)

    if @timetable.save
      redirect_to movie_path(@movie), notice: '时间已创建。'
    else
      render :new
    end
  end

  def edit
    session[:return_to] = request.referer
  end

  def update
    @timetable.update(timetable_params)
    if @timetable.save
      redirect_to session.delete(:return_to), notice: '时间已修改。'
    else
      render :edit
    end
  end

  def destroy
    @timetable.destroy
    redirect_to :back, notice: '时间已删除。'
  end

  private
    def set_movie
      @movie = Movie.find(params[:movie_id])
    end

    def set_timetable
      @timetable = @movie.timetables.find(params[:id])
    end

    def timetable_params
      params.require(:timetable).permit(:date, :time, :cinema_id, :room)
    end
end
