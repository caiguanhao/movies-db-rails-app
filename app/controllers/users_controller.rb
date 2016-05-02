class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def messages
    target = User.find(params[:user_id])
    if current_user.nil?
      flash[:error] = "请先登录。"
      redirect_to user_path(target)
      return
    end
    msg = current_user.send_message(target, { body: params[:content] })
    puts msg.to_json, msg.errors.to_json
    if msg.id.present?
      flash[:notice] = "消息已发送。"
    else
      flash[:error] = "无法发送消息。"
    end
    redirect_to user_path(target)
  end
end
