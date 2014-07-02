class Technique < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  # brittle
  ANY_TECHNIQUE = "1"

  has_many :applied_techniques, inverse_of: :technique
end
