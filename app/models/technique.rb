class Technique < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  has_many :applied_techniques, inverse_of: :technique
end
