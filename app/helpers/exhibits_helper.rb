module ExhibitsHelper
  def exhibit(model, context)
    case model.class.name
    when 'AppliedTechnique'
      AppliedTechniqueExhibit.new(model, context)
    else
      model
    end
  end
end
