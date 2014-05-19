class AppliedTechniquesController < ApplicationController
  def aikido
    @type = "aikido"
    @selection, @video = videos(@type.titleize, "Rank")
    @default_filter = "Rank"
  end

  def iaido
    @type = "iaido"
    @selection, @video = videos(@type.titleize, "Rank")
    @default_filter = "Rank"
    render :aikido
  end

  # ajax calls
  def filtered_list
    @selection, @video = videos(params[:type], params[:filter_type])
    @default_filter = params[:filter_type]
    @type = params[:type]
  end

  def remote_show
    @video = Video.find(params[:id])
  end

  private
  def videos(art, filter="Rank")
    method = "#{art.downcase}_videos"
    selection = filter.constantize.send(method)
    first_selector = selection.keys.first
    first_video = selection[first_selector].first[:video] rescue nil
    return [selection, first_video]
  end
end
