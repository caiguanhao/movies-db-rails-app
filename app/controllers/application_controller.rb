class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_city

  def current_city
    session[:city].presence || '杭州'
  end

  after_filter :store_location

  def authenticate_admin!
    return if authenticate_user!.nil?
    if !is_admin?
      flash[:error] = '用户没有管理员权限或页面不存在。'
      redirect_to root_path
    end
  end

  helper_method :is_admin?

  def is_admin?
    user_signed_in? && current_user.admin == true
  end

  def store_location
    return unless request.get?
    if (request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/sign_out" &&
        request.path != "/users/cancel" &&
        request.path != "/users/edit" &&
        !request.xhr?)
      session[:previous_url] = request.fullpath
    end
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end

  def after_sign_out_path_for(resource)
    session[:previous_url] || root_path
  end

  W = /(\d+\.\d+%?)|(\d*%?)/
  H = W
  X = /(?:([-+]\d+))?/
  Y = X
  RE = /\A#{W}x?#{H}#{X}#{Y}([!<>@\^]?)\Z/

  def upload_image(fileobj, sub_dir = '', resize = '', crop = false)
    if fileobj.is_a? ActionDispatch::Http::UploadedFile
      ext = File.extname(fileobj.original_filename).downcase
      if ['.jpg', '.png', '.gif', '.jpeg'].include? ext
        md5 = Digest::MD5.new
        tmpdir = Rails.root.join('public', 'uploads', sub_dir)
        FileUtils.mkdir_p(tmpdir) if not File.directory?(tmpdir)
        file = Tempfile.new('file', tmpdir = tmpdir, encoding: 'ascii-8bit')
        content = fileobj.read
        md5.update content
        file.write content
        file.close
        filename = md5.hexdigest + ext
        final_path = Rails.root.join('public', 'uploads', sub_dir, filename)
        if resize.empty?
          File.rename file.path, final_path
        else
          image = MiniMagick::Image.open(file.path)
          if crop
            FileUtils.cp file.path, final_path
            resized_filename = md5.hexdigest + '_' + resize + ext
            resized_final_path = Rails.root.join('public', 'uploads', sub_dir, resized_filename)
            m = RE.match(resize)
            width  = (m[1] || m[2]).to_f
            height = (m[3] || m[4]).to_f
            img_width, img_height = *(image[:dimensions].map { |d| d.to_f } )
            resize_string = ''
            if img_width / width < img_height / height
              resize_string = "#{width.to_i}x"
              original_width = width
              original_height = (img_height * (width / img_width))
            else
              resize_string = "x#{height.to_i}"
              original_width = (img_width * (height / img_height))
              original_height = height
            end
            width_offset = [ ((original_width - width) / 2.0).to_i, 0 ].max
            height_offset = [ ((original_height - height) / 2.0).to_i, 0 ].max
            image.combine_options do |i|
              i.args << '+matte'
              i.resize(resize_string)
              i.gravity('NorthWest')
              i.crop "#{width.to_i}x#{height.to_i}+#{width_offset}+#{height_offset}!"
            end
            image.write resized_final_path
          else
            image.resize resize
            image.write final_path
          end
          file.unlink
        end
        return File.join('/uploads', sub_dir, filename)
      end
    end
    nil
  end
end
