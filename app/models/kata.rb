class Kata < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  has_many :waza_formats, inverse_of: :kata
  has_many :videos, inverse_of: :kata

  has_many :wazas, through: :waza_formats
  has_many :formats, through: :waza_formats
end
