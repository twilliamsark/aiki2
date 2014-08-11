class Stance < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  has_many :applied_techniques, inverse_of: :stance

  scope :default_order, -> { order(:id) }
end
