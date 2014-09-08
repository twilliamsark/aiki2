class UserNotesController < ApplicationController
  before_action :correct_user, only: [:new, :create, :destroy]

  def new
    @user_note = @user.user_notes.build(waza_format: @waza_format)
    @video = params[:video]
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @user_note = UserNote.new(user_note_params)
    @video = Video.find_by(id: params[:video])
    @user_note.save
  end

  def destroy
    @user_note = UserNote.find_by(id: params[:id], user: @user, waza_format: @waza_format)
    @video = Video.find_by(id: params[:video])
    @user_note.destroy if @user_note
  end

  private

  def user_note_params
    params.require(:user_note).permit(:note, :user_id, :waza_format_id)
  end

  def correct_user
    @user = User.find_by(id: params[:user_id])
    @waza_format = WazaFormat.find_by(id: params[:waza_format_id])
    @waza = @waza_format.waza
    redirect_to(aikido_path) if !current_user?(@user) && @waza_format.nil?
  end
end
