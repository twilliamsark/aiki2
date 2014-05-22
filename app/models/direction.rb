class Direction < ActiveRecord::Base
  include HasVideos
  include Filterable

  # brittle
  ANY_DIRECTION = "1"

  has_many :applied_techniques, inverse_of: :direction
end
