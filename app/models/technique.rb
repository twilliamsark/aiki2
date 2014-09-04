class Technique < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  has_many :wazas, inverse_of: :technique
  has_many :videos, through: :wazas
end
