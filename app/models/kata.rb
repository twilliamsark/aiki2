class Kata < ActiveRecord::Base
  include HasVideos

  has_many :applied_techniques, inverse_of: :kata

  scope :default_order, -> { order(:id) }
end
