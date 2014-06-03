require_relative 'exhibit'
class VideoExhibit < Exhibit
  def render_body
    @context.render(partial: "shared/video", locals: {video: self})
  end
end
