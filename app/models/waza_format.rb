class WazaFormat < ActiveRecord::Base
  include SeedFuSerializeable

  belongs_to :waza
  belongs_to :format
  belongs_to :rank
  belongs_to :kata

  has_many :videos, inverse_of: :waza_format
end
