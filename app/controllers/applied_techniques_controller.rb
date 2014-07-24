class AppliedTechniquesController < ApplicationController
  before_action :signed_in_user, only: [:aikido, :iaido]
  before_filter :action_params, only: [:aikido, :iaido, :remote_applied_technique]

  def aikido
    @type = "aikido"
    @default_sort ||= "Rank"
    @selection, @video = applied_techniques(@type.titleize, @default_sort, {}, @applied_technique_id, @video_id)
    @applied_technique = @video.applied_technique if @video && @applied_technique.nil?
    render :index
  end

  def iaido
    @type = "iaido"
    @default_sort ||= "Kata"
    @selection, @video = applied_techniques(@type.titleize, @default_sort, {}, @applied_technique_id, @video_id)
    @applied_technique = @video.applied_technique if @video && @applied_technique.nil?
    render :index
  end

  # ajax only
  def video_list
    @type = params[:type]
    @default_sort = params[:sort_type].gsub(/[[:space:]]/,'') || "Rank"
    @selection = nil
    @video = nil

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

      @selection, @video = applied_techniques(@type.titleize, @default_sort, filters)
    end
    @applied_technique = @video.applied_technique if @video && @applied_technique.nil?
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
      @applied_technique = AppliedTechnique.find_by_id(applied_technique_id)
      unless @applied_technique
        applied_technique_id = nil
        @applied_technique = nil #being explicit
      end
    end

    if !applied_technique_id.nil?
      if !video_id.nil?
        video = Video.find_by_id(video_id)
      else
        video = @applied_technique.first_video
      end

      unless !video.nil? && video.applied_technique == @applied_technique && VideoUtils.show_video?(video, current_user)
        video_id = nil
        video = nil
      end
    end

    selection = sort_class.constantize.send(:get_applied_techniques, art.downcase, filters, current_user)
    if video.nil? && applied_technique_id.nil?
      first_selector = selection.keys.first
      ats = selection[first_selector]
      ats.each do |at|
        video = at.first_video
        if !video.nil?
          @applied_technique = at
          break
        end
      end
    end

    return [selection, video]
  end

  def search_videos(art, search)
    ats = AppliedTechnique.send("#{art.downcase}_techniques").search(search)
    ats.compact!

    ats = ats.select {|at| VideoUtils.show_videos?(at.videos, current_user)}
    first_video = nil
    ats.each do |at|
      first_video = at.first_video
      break if first_video
    end

    selection = AppliedTechnique.build_selection(ats)
    return [selection, first_video]
  end

  def action_params
    @default_sort = params[:sort].titleize if params[:sort].present?
    @applied_technique_id = params[:applied_technique]
    @video_id = params[:video]
  end
end
