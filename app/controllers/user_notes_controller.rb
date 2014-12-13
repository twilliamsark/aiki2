class UserNotesController < ApplicationController
  before_action :correct_user, only: [:new, :create, :destroy]

  def new
    @note = @user.user_notes.build(waza_format: @waza_format)
  end

  def create
    @note = UserNote.new(user_note_params)
    @note.save
  end

  def destroy
    @note = UserNote.find_by(id: params[:id], user: @user, waza_format: @waza_format)
    @note.destroy if @note
  end

  private

  def user_note_params
    params.require(:user_note).permit(:note, :user_id, :waza_format_id, :type, :title)
  end

  def correct_user
    @user = User.find_by(id: params[:user_id])
    redirect_to(aikido_path) if !current_user?(@user) && !@user.restricted?
    @waza_format = WazaFormat.find_by(id: params[:waza_format_id])
    redirect_to(aikido_path) if @waza_format.nil?
    @waza = @waza_format.waza
    @video = @waza_format.first_video
  end
end
