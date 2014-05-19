class TestingLevel < ActiveRecord::Base
  include HasVideos

  has_many :applied_techniques, inverse_of: :testing_level
end
