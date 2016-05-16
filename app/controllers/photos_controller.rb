class PhotosController < ApplicationController
  before_action :set_movie
  before_action :set_photo, only: [:update, :destroy]

  def index
    @photos = @movie.photos.group_by(&:photo_type)
  end

  def update
    @photo.assign_attributes(photo_params)
    if @photo.save
      flash[:notice] = "成功更新图片。"
    else
      flash[:error] = "无法更新图片。"
    end
    redirect_to movie_photos_path(@movie, anchor: "_#{@photo.photo_type}")
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
end
