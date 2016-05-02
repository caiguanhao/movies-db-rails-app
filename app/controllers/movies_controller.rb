class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy, :new_comment]

  before_action :authenticate_user!, only: [:new_comment]

  before_action :authenticate_admin!, only: [:new, :edit, :create, :update, :destroy]

  # GET /movies
  def index
    if params[:query].present?
      @movies = Movie.where('name like :query or alias like :query', { query: "%#{params[:query]}%" })
    else
      @movies = Movie.all
    end
  end

  # GET /movies/1
  def show
    @dates = @movie.timetables.select(:date).uniq.where('date >= ?', Date.current).pluck(:date)
    @comments = @movie.comments.to_a
    @comment = @movie.comments.where(user: current_user).first || @movie.comments.new
  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie, notice: 'Movie was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
    redirect_to movies_url, notice: 'Movie was successfully destroyed.'
  end

  def new_comment
    @comment = @movie.comments.where(user: current_user).first
    if @comment
      @comment.assign_attributes(comment_params)
    else
      @comment = @movie.comments.new(comment_params)
    end
    @comment.user_id = current_user.id
    @comment.save
    redirect_to movie_path(@movie)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(
        :name,
        :alias,
        :year,
        :poster,
        :star,
        :director,
        :writer,
        :country,
        :runtime,
        :aka,
        :genre,
        :content,
      )
    end

    def comment_params
      params.require(:comment).permit(:rating, :content)
    end
end
