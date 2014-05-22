class Video < ActiveRecord::Base
  belongs_to :applied_technique, inverse_of: :videos

  scope :for_aikido,
   -> { joins(:applied_technique).merge(AppliedTechnique.aikido_techniques) }
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

  def show_video?
    youtube_code && youtube_code != 'n/a'
  end

  def self.show_video?(video=nil)
    VIDEOS_ONLINE && !video.nil? && video.show_video? && App.connected_to_youtube?
  end
end
