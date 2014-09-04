class Style < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  has_many :videos, inverse_of: :style
  has_many :waza_formats, through: :videos
  has_many :wazas, through: :waza_formats
  has_many :formats, through: :waza_formats
end
