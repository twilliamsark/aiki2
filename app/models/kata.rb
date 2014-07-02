class Kata < ActiveRecord::Base
  include HasVideos
  include SeedFuSerializeable

  has_many :applied_techniques, inverse_of: :kata
end
