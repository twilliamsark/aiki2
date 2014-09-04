class Rank < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  has_many :waza_formats, inverse_of: :rank
  has_many :wazas, through: :waza_formats
  has_many :formats, through: :waza_formats
  has_many :videos, through: :waza_formats

  scope :default_order, -> { order(:position) }

  scope :aikido, -> { default_order.select{|r| r.has_aikido?} }
  scope :iaido, -> { default_order.select{|r| r.has_iaido?} }

  def has_iaido?
    formats.include?(Format.iaido) ? true : false
  end

  def has_aikido?
    num_formats = formats.uniq.size
    num_formats > 1 || (num_formats == 1 && !has_iaido?)
  end

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

  def place
    return :white if belt == 'White'
    return :black if belt == 'Black'
    return :miscellaneous
  end
end
