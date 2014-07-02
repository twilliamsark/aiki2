class Rank < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  # brittle
  ANY_RANK = "1"

  has_many :applied_techniques, inverse_of: :rank

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
