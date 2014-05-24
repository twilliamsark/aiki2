class Format < ActiveRecord::Base
  include HasVideos
  include Filterable

  # brittle
  ANY_FORMAT = "1"
  AIKI_TOHO = 'Aiki Toho'

  has_many :applied_techniques, inverse_of: :format

  scope :aiki_toho, -> { where(name: AIKI_TOHO) }
  scope :aikido, -> { where(arel_table[:name].not_eq(AIKI_TOHO)) }

  scope :default_order, -> { order(:position) }

  def self.options_for_select
    format_any = Format.find(ANY_FORMAT)
    Format.where("name != 'Any' and name != '#{AIKI_TOHO}'").default_order.to_a
      .inject({ format_any.label => format_any.id }) do |options_hash, format|
        options_hash[format.label] = format.id
        options_hash
      end
  end
end
