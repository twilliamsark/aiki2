class UsersController < ApplicationController
  before_action :correct_user, only: [:change_password, :save_password]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome!"
      redirect_to aikido_path
    else
      render :new
    end
  end

  def change_password
  end

  def save_password
    if @user.update_attributes(user_params)
      flash[:success] = "Password updated"
      redirect_to aikido_path
    else
      render :change_password
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def correct_user
    @user = User.find_by(id: params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
end
