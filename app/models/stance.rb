class Stance < ActiveRecord::Base
  include HasVideos
  include Filterable

  # brittle
  ANY_STANCE = "1"

  has_many :applied_techniques, inverse_of: :stance

  scope :default_order, -> { order(:id) }
end
