require_relative 'exhibit'

class WazaExhibit < Exhibit
  def render_body(video)
    @context.render(partial: "show", locals: {waza: self, video: video || first_video})
  end
end
