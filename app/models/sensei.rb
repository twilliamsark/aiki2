class Sensei < ActiveRecord::Base
  include Filterable
  include SeedFuSerializeable

  has_many :videos, inverse_of: :sensei
  has_many :waza_formats, through: :videos
  has_many :wazas, through: :waza_formats
  has_many :formats, through: :waza_formats

  validates_presence_of :name

  scope :distinct_model, -> { uniq }
  scope :default_order, -> { order(:name) }
end
