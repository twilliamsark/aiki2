require 'delegate'
class Exhibit < SimpleDelegator
  def initialize(model, context)
    @context = context
    super(model)
  end

  # These help form_for not to get confused
  def to_model
    __getobj__
  end

  def class
    __getobj__.class
  end
end
