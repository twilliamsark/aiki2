class AppliedTechniquesController < ApplicationController
  before_action :signed_in_user, only: [:aikido, :iaido]
  before_filter :action_params, only: [:aikido, :iaido]

  def aikido
    @type = "aikido"
    @default_sort ||= "Rank"
    @selection, @video = videos(@type.titleize, @default_sort, {}, @applied_technique_id)
    render :index
  end

  def iaido
    @type = "iaido"
    @default_sort ||= "Kata"
    @selection, @video = videos(@type.titleize, @default_sort, {}, @applied_technique_id)
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

  private

  def videos(art, sort_class, filters={}, applied_technique_id = nil)
    selection = sort_class.constantize.send(:get_videos, art.downcase, filters, demo_user?)
    first_selector = selection.keys.first
    if applied_technique_id.nil?
      first_video = selection[first_selector].first[:video] rescue nil
    else
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
      at.videos.visible.primary
    end.flatten

    vids.compact!
    vids = vids.select {|vid| vid.for_demo?} if demo_user?

    first_video = vids.first
    selection = VideoUtils.video_collection(vids)
    return [selection, first_video]
  end

  def action_params
    @default_sort = params[:sort].titleize if params[:sort].present?
    @applied_technique_id = params[:applied_technique]
  end
end
