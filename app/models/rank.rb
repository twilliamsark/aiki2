class Rank < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  has_many :waza_formats, inverse_of: :rank
  has_many :wazas, through: :waza_formats

  scope :default_order, -> { order(:position) }

  def label
    "#{name}#{description.present? ? ' - ' + description : '' }#{belt.present? ? ' (' + belt + ')' : ''}"
  end

  def miscellaneous?
    name == 'Miscellaneous'
  end

  # for active_admin
  def to_label
    label
  end
end
