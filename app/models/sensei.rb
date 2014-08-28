class Sensei < ActiveRecord::Base
  include SeedFuSerializeable

  has_many :videos, inverse_of: :sensei

  validates_presence_of :name
end
