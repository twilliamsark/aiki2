class Format < ActiveRecord::Base
  include HasVideos
  include Filterable

  # brittle
  ANY_FORMAT = "1"

  has_many :applied_techniques, inverse_of: :format

  def self.options_for_select
    format_any = Format.find(ANY_FORMAT)
    Format.where("name != 'Any' and name != 'Aiki Toho'").default_order.all
      .inject({ format_any.label => format_any.id }) do |options_hash, format|
        options_hash[format.label] = format.id
        options_hash
      end
  end
end
