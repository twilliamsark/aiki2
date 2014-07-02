class Direction < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  # brittle
  ANY_DIRECTION = "1"

  has_many :applied_techniques, inverse_of: :direction
end
