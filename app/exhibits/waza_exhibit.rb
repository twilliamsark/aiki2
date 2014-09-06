require_relative 'exhibit'

class WazaExhibit < Exhibit
  def render_body(video)
    waza_format = video.waza_formats.first
    @context.render(partial: "show", locals: {waza: self, video: video})
  end
end
