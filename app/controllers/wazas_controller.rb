class WazasController < ApplicationController
  before_action :signed_in_user, only: :aikido
  before_filter :action_params, only: [:aikido, :remote_waza]

  def aikido
    @type = "aikido"
    @default_sort ||= "Technique"
    @selection, @video = wazas(@type.titleize, @default_sort, {}, @waza_id, @video_id)
    @waza = @video.waza if @video && @waza.nil?
    render :index
  end

  # ajax only
  def video_list
    @type = params[:type]
    @default_sort = 'Technique'
    @selection = nil
    @video = nil

    @selection, @video = wazas(@type.titleize, @default_sort, {})
    @waza = @video.waza if @video && @waza.nil?
  end

  # ajax only
  def remote_waza
    @waza = Waza.find_by_id(@waza_id)
    if @waza && @video_id
      @video = Video.find_by_id(@video_id)
      unless @video.waza == @waza
        @video = nil
        @video_id = nil
      end
    end
  end

  private

  def wazas(art, sort_class, filters={}, waza_id = nil, video_id = nil)
    if !waza_id.nil?
      @waza = Waza.find_by_id(waza_id)
      unless @waza
        waza_id = nil
        @waza = nil #being explicit
      end
    end

    if !waza_id.nil?
      if !video_id.nil?
        video = Video.find_by_id(video_id)
      else
        video = @waza.first_video
      end

      unless !video.nil? && video.waza == @waza && VideoUtils.show_video?(video, current_user)
        video_id = nil
        video = nil
      end
    end

    selection = sort_class.constantize.send(:get_wazas, art.downcase, filters, current_user)
    if video.nil? && waza_id.nil?
      first_selector = selection.keys.first
      ats = selection[first_selector]
      ats.each do |at|
        video = at.first_video
        if !video.nil?
          @waza = at
          break
        end
      end unless ats.nil?
    end

    return [selection, video]
  end

  # def search_videos(art, search)
  #   ats = Waza.send("#{art.downcase}_techniques").search(search)
  #   ats.compact!

  #   ats = ats.select {|at| VideoUtils.show_videos?(at.videos, current_user)}
  #   first_video = nil
  #   ats.each do |at|
  #     first_video = at.first_video
  #     break if first_video
  #   end

  #   selection = Waza.build_selection(ats)
  #   return [selection, first_video]
  # end

  def action_params
    @default_sort = 'Technique'
    @waza_id = params[:waza]
    @video_id = params[:video]
  end
end
