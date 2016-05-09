module MoviesHelper
  def movie_image_tag(photo, options={})
    source = photo.url
    case photo.url_type
    when 'mtime', 'photo'
      width = options[:width].presence || 100
      height = options[:height].presence || 100
      width *= 2
      height *= 2
      source = source.sub(/(\.jpg|png)$/, "_#{width}X#{height}\\1")
    end
    if options[:lazy] == true
      options[:data] ||= {}
      options[:data][:src] = source
      options.delete(:lazy)
      image_tag nil, options
    else
      image_tag source, options
    end
  end
end
