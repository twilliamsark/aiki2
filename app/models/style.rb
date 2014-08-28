class Style < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  has_many :videos, inverse_of: :style
end
