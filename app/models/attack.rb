class Attack < ActiveRecord::Base
  include HasVideos

  has_many :applied_techniques, inverse_of: :attack
end
