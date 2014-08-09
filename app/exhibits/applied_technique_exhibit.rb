require_relative 'exhibit'
class AppliedTechniqueExhibit < Exhibit
  def render_body(video)
    @context.render(partial: "show", locals: {applied_technique: self, video: video || first_video})
  end
end
