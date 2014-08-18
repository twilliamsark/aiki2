class Video < ActiveRecord::Base
  include SeedFuSerializeable

  belongs_to :applied_technique, inverse_of: :videos

  validates :youtube_code, presence: true

  after_initialize do |video|
    video.youtube_code = 'n/a' unless video.youtube_code.present?
  end

  scope :for_aikido,
   -> { joins(:applied_technique).merge(AppliedTechnique.aikido_techniques) }

  scope :for_iaido,
   -> { joins(:applied_technique).merge(AppliedTechnique.iaido_techniques) }

  scope :primary, -> { where(primary: true) }
  scope :secondary, -> { where(primary: false) }

  scope :visible, ->(state=true) { where(visible: state) }
  scope :demo, ->(state=true) { where(for_demo: state) }

  def name
    vid_name = ''
    if !applied_technique.nil? && applied_technique.name.present?
      vid_name = applied_technique.name
    end

    vid_name += "#{primary? ? ' (primary)' : ''}"

    if description.present?
      vid_name += " (#{description})"
    end
    vid_name
  end

  def valid_youtube_code?
    youtube_code.present? && youtube_code != 'n/a'
  end

  def self.show_video?(video=nil)
    VIDEOS_ONLINE && !video.nil? && video.valid_youtube_code? && App.connected_to_youtube?
  end
end
