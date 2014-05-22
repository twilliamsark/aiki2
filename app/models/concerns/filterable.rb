module Filterable
  extend ActiveSupport::Concern

  def label
    "#{name}#{short_description.present? ? ' - ' + short_description : '' }"
  end
end
