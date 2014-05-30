class AppliedTechniquesController < ApplicationController
  before_filter :action_params, only: [:aikido, :iaido]

  def aikido
    @type = "aikido"
    @default_sort ||= "Rank"
    @selection, @video = videos(@type.titleize, @default_sort, {}, @applied_technique_id)
  end

  def iaido
    @type = "iaido"
    @default_sort ||= "Format"
    @selection, @video = videos(@type.titleize, @default_sort, {}, @applied_technique_id)
    render :aikido
  end

  # ajax only
  def video_list
    @type = params[:type]
    @default_sort = params[:sort_type].gsub(/[[:space:]]/,'') || "Rank"
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

  # ajax only
  def remote_show
    @video = Video.find(params[:id])
  end

  private

  def videos(art, sort_class, filters={}, applied_technique_id = nil)
    method = "get_videos"
    selection = sort_class.constantize.send(method, art.downcase, filters)
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

  def action_params
    @default_sort = params[:sort].titleize if params[:sort].present?
    @applied_technique_id = params[:applied_technique]
  end
end
