class Stance < ActiveRecord::Base
  include HasVideos
  include Filterable
  include SeedFuSerializeable

  has_many :wazas, inverse_of: :stance

  scope :default_order, -> { order(:id) }
end
