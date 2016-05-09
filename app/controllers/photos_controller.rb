class PhotosController < ApplicationController
  before_action :set_movie
  before_action :set_photo, only: [:destroy]

  def index
    @photos = @movie.photos.group_by(&:photo_type)
  end

  def destroy
    photo_type = @photo.photo_type
    @photo.destroy
    redirect_to movie_photos_path(@movie, anchor: "_#{photo_type}"), notice: '成功删除图片。'
  end

  private
    def set_movie
      @movie = Movie.find(params[:movie_id])
    end

    def set_photo
      @photo = @movie.photos.find(params[:id])
    end
end
