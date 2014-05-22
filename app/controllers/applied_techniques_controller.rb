class AppliedTechniquesController < ApplicationController
  def aikido
    @type = "aikido"
    @selection, @video = videos(@type.titleize, "Rank")
    @default_sort = "Rank"
  end

  def iaido
    @type = "iaido"
    @selection, @video = videos(@type.titleize, "Kata")
    @default_sort = "Kata"
    render :aikido
  end

  # ajax calls
  def video_list
    @type = params[:type]
    @default_sort = params[:sort_type].gsub(/[[:space:]]/,'') || "Rank"
    filters = {}
    if params[:format_type].present?
      filters[:format] = params[:format_type]
    end
    if params[:technique_type].present?
      filters[:technique] = params[:technique_type]
    end
    if params[:direction_type].present?
      filters[:direction] = params[:direction_type]
    end
    if params[:stance_type].present?
      filters[:stance] = params[:stance_type]
    end
    if params[:waza_type].present?
      filters[:waza] = params[:waza_type]
    end
    if params[:testing_level_type].present?
      filters[:testing_level] = params[:testing_level_type]
    end
    @selection, @video = videos(@type, @default_sort, filters)
  end

  def remote_show
    @video = Video.find(params[:id])
  end

  private
  def videos(art, sort_class, filters={})
    method = "#{art.downcase}_videos"
    selection = sort_class.constantize.send(method, filters)
    first_selector = selection.keys.first
    first_video = selection[first_selector].first[:video] rescue nil
    return [selection, first_video]
  end
end
