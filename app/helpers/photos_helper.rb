module PhotosHelper
  def big_photo_url(photo)
    url = photo.url
    if photo.url_type == 'mtime'
      url = url.sub(/(\.jpg|png)$/, "_1000X1000\\1")
    end
    url
  end
end
