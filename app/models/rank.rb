class Rank < ActiveRecord::Base
  include HasVideos
  include Filterable

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

  def to_hash
    {id: id, name: name, position: position, belt: belt, description: description, short_description: short_description}
  end

  # for active_admin
  def to_label
    label
  end
end
