class AppliedTechniquesController < ApplicationController
  def aikido
    @type = "aikido"
    @selection, @video = videos(@type.titleize, "Rank")
    @default_sort = "Rank"
  end

  def iaido
    @type = "iaido"
    @selection, @video = videos(@type.titleize, "Rank")
    @default_sort = "Rank"
    render :aikido
  end

  # ajax calls
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

  def remote_show
    @video = Video.find(params[:id])
  end

  private
  def videos(art, sort_class, filters={})
    method = "get_videos"
    selection = sort_class.constantize.send(method, art.downcase, filters)
    first_selector = selection.keys.first
    first_video = selection[first_selector].first[:video] rescue nil
    return [selection, first_video]
  end
end
