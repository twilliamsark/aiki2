class AppliedTechniquesController < ApplicationController
  def aikido
    @selection, @video = videos("Aikido", "Rank")
    @default_filter = "Rank"
  end

  def iaido
    @selection, @video = videos("Iaido", "Rank")
    @default_filter = "Rank"
  end

  # ajax calls
  def filtered_list
    @selection, @video = videos(params[:type], params[:filter_type])
    @default_filter = params[:filter_type]
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
