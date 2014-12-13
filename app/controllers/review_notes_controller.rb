class ReviewNotesController < ApplicationController
  before_action :correct_user, only: [:new, :create, :destroy]

  def new
    @note = @user.review_notes.build(waza_format: @waza_format)
    render 'user_notes/new'
  end

  def create
    @note = ReviewNote.new(review_note_params)
    @note.save
    render 'user_notes/create'
  end

  def destroy
    @note = ReviewNote.find_by(id: params[:id], user: @user, waza_format: @waza_format)
    if @note
      @note.destroy if current_user.admin? || current_user?(@user)
    end
    render 'user_notes/destroy'
  end

  private

  def review_note_params
    params.require(:review_note).permit(:note, :user_id, :waza_format_id, :type, :title)
  end

  def correct_user
    @user = User.find_by(id: params[:user_id])
    redirect_to(aikido_path) unless current_user?(@user) || current_user.admin?
    @waza_format = WazaFormat.find_by(id: params[:waza_format_id])
    redirect_to(aikido_path) if @waza_format.nil?
    @waza = @waza_format.waza
    @video = @waza_format.first_video
  end
end
