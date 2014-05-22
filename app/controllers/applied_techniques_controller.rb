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
    @default_sort = params[:sort_type].gsub(/[[:space:]]/,'')
    format = params[:format_type] || Format::ANY_FORMAT
    @selection, @video = videos(@type, @default_sort, format)
  end

  def remote_show
    @video = Video.find(params[:id])
  end

  private
  def videos(art, sort_class="Rank", format_type=Format::ANY_FORMAT)
    method = "#{art.downcase}_videos"
    selection = sort_class.constantize.send(method, format_type)
    first_selector = selection.keys.first
    first_video = selection[first_selector].first[:video] rescue nil
    return [selection, first_video]
  end
end
