class Attack < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  # brittle
  ANY_ATTACK = "1"

  has_many :applied_techniques, inverse_of: :attack
end
