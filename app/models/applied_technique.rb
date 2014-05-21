class AppliedTechnique < ActiveRecord::Base
  belongs_to :technique, inverse_of: :applied_techniques
  belongs_to :attack, inverse_of: :applied_techniques
  belongs_to :stance, inverse_of: :applied_techniques
  belongs_to :direction, inverse_of: :applied_techniques
  belongs_to :waza, inverse_of: :applied_techniques
  belongs_to :rank, inverse_of: :applied_techniques
  belongs_to :art, inverse_of: :applied_techniques
  belongs_to :kata, inverse_of: :applied_techniques
  belongs_to :testing_level, inverse_of: :applied_techniques
  belongs_to :format, inverse_of: :applied_techniques

  has_many :videos, inverse_of: :applied_technique

  scope :aikido_techniques, -> {where(art: Art.aikido)}
  scope :iaido_techniques, -> {where(art: Art.iaido)}

  scope :for_format, ->(format) { where(format_id: format) }
  scope :for_direction, ->(direction) { where(direction_id: direction) }
end
