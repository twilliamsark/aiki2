module ExhibitsHelper
  def exhibit(model, context)
    case model.class.name
    when 'Video'
      VideoExhibit.new(model, context)
    when 'AppliedTechnique'
      AppliedTechniqueExhibit.new(model, context)
    else
      model
    end
  end
end
