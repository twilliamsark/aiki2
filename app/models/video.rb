class Video < ActiveRecord::Base
  belongs_to :applied_technique, inverse_of: :videos

  scope :for_aikido,
   -> { joins(:applied_technique).merge(AppliedTechnique.aikido_techniques) }

  scope :for_aikido_testable,
   ->(testable) { joins(:applied_technique)
                  .merge(AppliedTechnique.testable(testable))
                  .merge(AppliedTechnique.aikido_techniques) }


  scope :for_aikido_format,
   ->(format) { joins(:applied_technique)
                  .merge(AppliedTechnique.for_format(format))
                  .merge(AppliedTechnique.aikido_techniques) }
  scope :for_aikido_direction,
   ->(direction) { joins(:applied_technique)
                    .merge(AppliedTechnique.for_direction(direction))
                    .merge(AppliedTechnique.aikido_techniques) }
  scope :for_aikido_technique,
   ->(technique) { joins(:applied_technique)
                    .merge(AppliedTechnique.for_technique(technique))
                    .merge(AppliedTechnique.aikido_techniques) }
  scope :for_aikido_stance,
   ->(stance) { joins(:applied_technique)
                    .merge(AppliedTechnique.for_stance(stance))
                    .merge(AppliedTechnique.aikido_techniques) }
  scope :for_aikido_waza,
   ->(waza) { joins(:applied_technique)
                    .merge(AppliedTechnique.for_waza(waza))
                    .merge(AppliedTechnique.aikido_techniques) }
  scope :for_aikido_attack,
   ->(attack) { joins(:applied_technique)
                    .merge(AppliedTechnique.for_attack(attack))
                    .merge(AppliedTechnique.aikido_techniques) }
  scope :for_aikido_rank,
   ->(rank) { joins(:applied_technique)
                    .merge(AppliedTechnique.for_rank(rank))
                    .merge(AppliedTechnique.aikido_techniques) }

  scope :for_iaido,
   -> { joins(:applied_technique).merge(AppliedTechnique.iaido_techniques) }

  def show_video?
    youtube_code && youtube_code != 'n/a'
  end

  def self.show_video?(video=nil)
    VIDEOS_ONLINE && !video.nil? && video.show_video? && App.connected_to_youtube?
  end
end
