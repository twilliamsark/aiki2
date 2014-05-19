class Format < ActiveRecord::Base
  include HasVideos

  has_many :applied_techniques, inverse_of: :format
end
