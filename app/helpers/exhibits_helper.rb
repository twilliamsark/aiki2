module ExhibitsHelper
  def exhibit(model, context)
    case model.class.name
    when 'Video'
      VideoExhibit.new(model, context)
    else
      model
    end
  end
end
