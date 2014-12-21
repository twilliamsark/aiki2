class PasswordResetsController < ApplicationController
  def edit
    sign_out if current_user
    @title = "Update Password"
    begin
      @user = User.find_by_password_reset_token!(params[:id])
    rescue
      redirect_to root_url, notice: "Invalid/Expired password update token"
    end
  end

  def update
    @user = User.find_by_password_reset_token!(params[:id])
    if @user && @user.update_attributes(user_params)
      @user.update_attribute(:password_reset_token, nil)
      sign_in @user
      redirect_to root_url, notice: "Password has been reset!"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
