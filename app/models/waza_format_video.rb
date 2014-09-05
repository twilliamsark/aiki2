class WazaFormatVideo < ActiveRecord::Base
  include SeedFuSerializeable

  belongs_to :waza_format
  belongs_to :video
end
