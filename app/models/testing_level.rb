class TestingLevel < ActiveRecord::Base
  include HasVideos
  include Filterable

  # brittle
  ANY_TESTING_LEVEL = "1"

  has_many :applied_techniques, inverse_of: :testing_level
end
