class AttackHeight < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  # brittle
  ANY_ATTACK_HEIGHT = "1"

  has_many :applied_techniques, inverse_of: :attack_height
end
