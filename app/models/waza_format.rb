class WazaFormat < ActiveRecord::Base
  include SeedFuSerializeable

  belongs_to :waza
  belongs_to :format
  belongs_to :rank
  belongs_to :kata

  has_many :videos, inverse_of: :waza_format
  has_one :stance, through: :waza
  has_one :attack, through: :waza
  has_one :technique, through: :waza
  has_one :direction, through: :waza
end
