class Attack < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  has_many :wazas, inverse_of: :attack
  has_many :videos, through: :wazas
end
