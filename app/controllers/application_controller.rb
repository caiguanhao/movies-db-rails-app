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
      flash[:error] = '用户没有管理员权限。'
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
end
