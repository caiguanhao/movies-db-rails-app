class RegistrationsController < Devise::RegistrationsController
  def update
    account_update_params = params.require(:user).permit(
      :email, :password, :password_confirmation, :current_password,

      :name, :avatar, :gender, :astro, :city, :intro,
    )

    @user = User.find(current_user.id)

    if params[:user][:password].present?
      successfully_updated = @user.update_with_password(account_update_params)
    else
      account_update_params.delete('email')
      account_update_params.delete('password')
      account_update_params.delete('password_confirmation')
      account_update_params.delete('current_password')
      avatar = upload_image(account_update_params['avatar'], sub_dir = 'avatars', resize = '200x200!>')
      account_update_params.delete('avatar')
      account_update_params['avatar'] = avatar if avatar
      successfully_updated = @user.update_attributes(account_update_params)
    end

    if successfully_updated
      set_flash_message :notice, :updated
      sign_in @user, :bypass => true
      redirect_to edit_user_registration_path
    else
      render 'edit'
    end
  end
end
