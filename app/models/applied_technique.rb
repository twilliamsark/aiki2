class AppliedTechnique < ActiveRecord::Base
  belongs_to :technique, inverse_of: :applied_techniques
  belongs_to :attack, inverse_of: :applied_techniques
  belongs_to :stance, inverse_of: :applied_techniques
  belongs_to :direction, inverse_of: :applied_techniques
  belongs_to :waza, inverse_of: :applied_techniques
  belongs_to :rank, inverse_of: :applied_techniques
  belongs_to :art, inverse_of: :applied_techniques
  belongs_to :kata, inverse_of: :applied_techniques
  belongs_to :format, inverse_of: :applied_techniques
  belongs_to :attack_height, inverse_of: :applied_techniques

  has_many :videos, inverse_of: :applied_technique

  scope :aikido_techniques, -> {where(art: Art.aikido).order(:name)}
  scope :iaido_techniques, -> {where(art: Art.iaido).order(:name)}
  scope :testable, ->(on_test) { where(on_test: on_test) }
  scope :for_format, ->(format) { where(format_id: format) }
  scope :for_direction, ->(direction) { where(direction_id: direction) }
  scope :for_technique, ->(technique) { where(technique_id: technique) }
  scope :for_stance, ->(stance) { where(stance_id: stance) }
  scope :for_waza, ->(waza) { where(waza_id: waza) }
  scope :for_attack, ->(attack) { where(attack_id: attack) }
  scope :for_rank, ->(rank) { where(rank_id: rank) }
end
