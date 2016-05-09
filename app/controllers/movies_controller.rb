class MoviesController < ApplicationController
  before_action :set_movie, except: [:index, :new, :create]

  before_action :authenticate_user!, only: [:new_comment, :delete_comment, :like, :unlike]

  before_action :authenticate_admin!, only: [:new, :edit, :create, :update, :destroy, :delete_comment_by_id, :add_photos]

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
    @dates = @movie.timetables.of_city(current_city).select(:date).uniq.where('date >= ?', Date.current).pluck(:date)
    @timetables_by_date = @dates.map{|date| @movie.timetables.includes(:cinema).where(date: date).order(cinema_id: :asc).group_by(&:cinema_id) }
    @comments = @movie.comments.order(updated_at: :desc)
    @comment = @movie.comments.where(user: current_user).first || @movie.comments.new
    @photos = @movie.photos.order(id: :asc).limit(10)
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
      redirect_to @movie, notice: '成功创建电影。'
    else
      render :new
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: '成功更新电影。'
    else
      render :edit
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
    redirect_to movies_url, notice: '成功删除电影。'
  end

  def new_comment
    @comment = @movie.comments.where(user: current_user).first
    if @comment
      @comment.assign_attributes(comment_params)
    else
      @comment = @movie.comments.new(comment_params)
    end
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = "成功发表影评。"
    else
      flash[:error] = "无法发表影评。"
    end
    redirect_to movie_path(@movie, anchor: :comments)
  end

  def delete_comment
    @comment = @movie.comments.where(user: current_user).first
    if @comment.destroy
      flash[:notice] = "成功删除影评。"
    else
      flash[:error] = "无法删除影评。"
    end
    redirect_to movie_path(@movie)
  end

  def delete_comment_by_id
    @comment = @movie.comments.find(params[:comment_id])
    if @comment.destroy
      flash[:notice] = "成功删除影评。"
    else
      flash[:error] = "无法删除影评。"
    end
    redirect_to movie_path(@movie, anchor: :comments)
  end

  def add_photos
    photo = @movie.photos.new(photo_params)
    photo.save
    redirect_to movie_photos_path(@movie, anchor: "_#{photo.photo_type}")
  end

  def like
    current_user.like_with! @movie, params[:type]
    redirect_to movie_path(@movie)
  end

  def unlike
    current_user.unlike! @movie
    redirect_to movie_path(@movie)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      permitted = params.require(:movie).permit(
        :name,
        :alias,
        :year,
        :release_date,
        :poster,
        :poster_file,
        :star,
        :director,
        :writer,
        :country,
        :runtime,
        :aka,
        :genre,
        :content,
      )
      poster = upload_image(permitted['poster_file'], sub_dir = 'posters', resize = '350x525!>')
      permitted.delete('poster_file')
      permitted['poster'] = poster if poster
      permitted
    end

    def photo_params
      permitted = params.require(:photo).permit(
        :title,
        :url,
        :url_file,
        :photo_type,
      )
      photo = upload_image(permitted['url_file'], sub_dir = 'photos', resize = '200x200', crop = true)
      permitted.delete('url_file')
      if photo
        permitted['url'] = photo
        permitted['url_type'] = 'photo'
      elsif permitted['url'] =~ /mtime\.cn/
        permitted['url_type'] = 'mtime'
      end
      permitted
    end

    def comment_params
      params.require(:comment).permit(:rating, :content)
    end
end
