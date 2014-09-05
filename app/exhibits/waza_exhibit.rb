require_relative 'exhibit'

class WazaExhibit < Exhibit
  def render_body(video=nil)
    video ||= first_video
    waza_format = video.waza_formats.first
    @context.render(partial: "show", locals: {waza: self, video: video})
  end
end
