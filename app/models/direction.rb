class Direction < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  has_many :wazas, inverse_of: :direction
  has_many :videos, through: :wazas
end
