class PasswordResetsController < ApplicationController
  def edit
    @user = User.find_by_password_reset_token!(params[:id])
  end

  def update
    @user = User.find_by_password_reset_token!(params[:id])
    if @user && @user.update_attributes(user_params)
      sign_in @user
      redirect_to root_url, :notice => "Password has been reset!"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
