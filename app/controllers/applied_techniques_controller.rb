class AppliedTechniquesController < ApplicationController
  before_action :signed_in_user, only: [:aikido, :iaido]
  before_filter :action_params, only: [:aikido, :iaido, :remote_applied_technique]

  def aikido
    @type = "aikido"
    @default_sort ||= "Rank"
    # @selection, @video = videos(@type.titleize, @default_sort, {}, @applied_technique_id, @video_id)
    @selection, @video = applied_techniques(@type.titleize, @default_sort, {}, @applied_technique_id, @video_id)
    @applied_technique = @video.applied_technique if @video
    render :index
  end

  def iaido
    @type = "iaido"
    @default_sort ||= "Kata"
    @selection, @video = videos(@type.titleize, @default_sort, {}, @applied_technique_id, @video_id)
    render :index
  end

  # ajax only
  def video_list
    @type = params[:type]
    @default_sort = params[:sort_type].gsub(/[[:space:]]/,'') || "Rank"

    if params[:search].present?
      @search_term = params[:search]
      @selection, @video = search_videos(@type, @search_term)
    else
      filters = {}

      filters[:format] = params[:format_type] if params[:format_type].present?
      filters[:technique] = params[:technique_type] if params[:technique_type].present?
      filters[:direction] = params[:direction_type] if params[:direction_type].present?
      filters[:stance] = params[:stance_type] if params[:stance_type].present?
      filters[:waza] = params[:waza_type] if params[:waza_type].present?
      filters[:attack] = params[:attack_type] if params[:attack_type].present?
      filters[:rank] = params[:rank_type] if params[:rank_type].present?

      if params[:testable] == 'true'
        filters[:testable] = true
      elsif params[:testable] == 'false'
        filters[:testable] = false
      else
        filters[:testable] = 'all'
      end

      @selection, @video = videos(@type, @default_sort, filters)
    end
  end

  # ajax only
  def remote_show
    @video = Video.find(params[:id])
  end

  # ajax only
  def remote_applied_technique
    @applied_technique = AppliedTechnique.find_by_id(@applied_technique_id)
    if @applied_technique && @video_id
      @video = Video.find_by_id(@video_id)
      unless @video.applied_technique == @applied_technique
        @video = nil
        @video_id = nil
      end
    end
  end

  private

  def applied_techniques(art, sort_class, filters={}, applied_technique_id = nil, video_id = nil)
    if !applied_technique_id.nil?
      applied_technique = AppliedTechnique.find_by_id(applied_technique_id)
      applied_technique_id = nil unless applied_technique
    end

    if !applied_technique_id.nil? && !video_id.nil?
      video = Video.find_by_id(video_id) if !video_id.nil?
      unless video.applied_technique == applied_technique && VideoUtils.show_video?(video, current_user)
        video_id = nil
        video = nil
      end
    end

    selection = sort_class.constantize.send(:get_applied_techniques, art.downcase, filters, current_user)
    if video.nil?
      first_selector = selection.keys.first
      if applied_technique_id.nil?
        video = selection[first_selector].first[:applied_technique].first_video
      else
        selection.each do |selector, ats|
          ats.each do |at|
            video = at.first_video
            break if video
          end
          break if video
        end
      end
    end

    return [selection, video]
  end

  def videos(art, sort_class, filters={}, applied_technique_id = nil, video_id = nil)
    selection = sort_class.constantize.send(:get_videos, art.downcase, filters, current_user)
    first_selector = selection.keys.first

    if !applied_technique_id.nil?
      applied_technique = AppliedTechnique.find_by_id(applied_technique_id)
      applied_technique_id = nil unless applied_technique
    end

    if !applied_technique_id.nil? && !video_id.nil?
      first_video = Video.find_by_id(video_id) if !video_id.nil?
      video_id = nil unless first_video.applied_technique == applied_technique && VideoUtils.show_video?(first_video, current_user)
    end

    if applied_technique_id.nil?
      first_video = selection[first_selector].first[:video] rescue nil
    elsif video_id.nil?
      selection.each do |selector, videos|
        next unless videos.any?
        first_video = videos.select {|vid| vid[:video].applied_technique_id.to_s == applied_technique_id}
        if first_video
          if first_video.any?
            first_video = first_video.first[:video]
            break
          else
            first_video = nil
          end
        end
      end
    end
    return [selection, first_video]
  end

  def search_videos(art, search)
    vids = AppliedTechnique.send("#{art.downcase}_techniques").search(search).map do |at|
      at.videos.primary
    end.flatten

    vids.compact!
    vids = vids.select {|vid| VideoUtils.show_video?(vid, current_user)}

    first_video = vids.first
    selection = VideoUtils.video_collection(vids)
    return [selection, first_video]
  end

  def action_params
    @default_sort = params[:sort].titleize if params[:sort].present?
    @applied_technique_id = params[:applied_technique]
    @video_id = params[:video]
  end
end
