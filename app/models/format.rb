class Format < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  TIADO = 'Tiado'
  AIKI_TOHO = 'Aiki Toho'

  has_many :waza_formats, inverse_of: :format
  has_many :wazas, through: :waza_formats

  validates :name, presence: true

  scope :aiki_toho, -> { where(name: AIKI_TOHO) }
  scope :aikido, -> { where(arel_table[:name].not_eq(AIKI_TOHO)) }

  scope :default_order, -> { order(:position) }

  def self.iaido
    aiki_toho.first rescue nil
  end
end
