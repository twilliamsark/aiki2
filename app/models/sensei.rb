class Sensei < ActiveRecord::Base
  has_many :videos, inverse_of: :sensei
end
