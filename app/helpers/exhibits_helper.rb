module ExhibitsHelper
  def exhibit(model, context)
    case model.class.name
    when 'Waza'
      WazaExhibit.new(model, context)
    else
      model
    end
  end
end
