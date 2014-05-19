class Waza < ActiveRecord::Base
  include HasVideos

  has_many :applied_techniques, inverse_of: :waza
end
