class UsersController < ApplicationController
  before_action :set_user, except: [:index]
  before_action :authenticate_user!, except: [:index, :show, :destroy]
  before_action :authenticate_admin!, only: [:index, :destroy]

  def index
    @users = User.where.not(id: current_user.id).order(id: :desc)
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def show
  end

  def messages
    if current_user.nil?
      flash[:error] = "请先登录。"
      redirect_to user_path(@user)
      return
    end
    msg = current_user.send_message(@user, { body: params[:content] })
    puts msg.to_json, msg.errors.to_json
    if msg.id.present?
      flash[:notice] = "消息已发送。"
    else
      flash[:error] = "无法发送消息。"
    end
    redirect_to user_path(@user)
  end

  def follow
    current_user.follow! @user
    flash[:notice] = "已关注用户。"
    redirect_to user_path(@user)
  end

  def unfollow
    current_user.unfollow! @user
    flash[:notice] = "已取消关注用户。"
    redirect_to user_path(@user)
  end

  private
    def set_user
      @user = User.find(params[:user_id] || params[:id])
    end

end
