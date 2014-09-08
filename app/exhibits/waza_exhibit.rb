require_relative 'exhibit'

class WazaExhibit < Exhibit
  def render_body(waza_format, video)
    @context.render(partial: "wazas/show", locals: {waza: self, waza_format: waza_format, video: video})
  end
end
