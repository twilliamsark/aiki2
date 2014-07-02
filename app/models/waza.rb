class Waza < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  # brittle
  ANY_WAZA = "1"

  has_many :applied_techniques, inverse_of: :waza
end
