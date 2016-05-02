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
      avatar = account_update_params['avatar']
      if avatar
        ext = File.extname(avatar.original_filename).downcase
        if ['.jpg', '.png', '.gif', '.jpeg'].include? ext
          md5 = Digest::MD5.new
          file = Tempfile.new('avatar', tmpdir = Rails.root.join('public', 'uploads'), encoding: 'ascii-8bit')
          content = avatar.read
          md5.update content
          file.write content
          file.close
          filename = md5.hexdigest + ext
          puts file.path, Rails.root.join('public', 'uploads', filename)
          File.rename file.path, Rails.root.join('public', 'uploads', filename)
          account_update_params['avatar'] = '/uploads/' + filename
        end
      end
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
