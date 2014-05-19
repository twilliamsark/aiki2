class Rank < ActiveRecord::Base
  include HasVideos

  has_many :applied_techniques, inverse_of: :rank

  scope :default_order, -> { order(:position) }
end
