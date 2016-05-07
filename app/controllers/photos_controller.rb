class PhotosController < ApplicationController
  before_action :set_movie, only: [:index]

  def index
    @photos = @movie.photos.group_by(&:photo_type)
  end

  private
    def set_movie
      @movie = Movie.find(params[:movie_id])
    end
end
