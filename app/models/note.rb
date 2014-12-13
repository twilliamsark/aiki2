class Note < ActiveRecord::Base
  include SeedFuSerializeable

  belongs_to :user
  belongs_to :waza_format
end
