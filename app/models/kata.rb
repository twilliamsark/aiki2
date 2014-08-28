class Kata < ActiveRecord::Base
  include HasVideos
  include SeedFuSerializeable

  has_many :waza_formats, inverse_of: :kata
  has_many :wazas, through: :waza_formats
end
