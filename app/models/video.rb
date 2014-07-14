class Video < ActiveRecord::Base
  include SeedFuSerializeable

  belongs_to :applied_technique, inverse_of: :videos

  scope :for_aikido,
   -> { joins(:applied_technique).merge(AppliedTechnique.aikido_techniques) }

  scope :for_iaido,
   -> { joins(:applied_technique).merge(AppliedTechnique.iaido_techniques) }

  scope :primary, -> { where(primary: true) }
  scope :secondary, -> { where(primary: false) }

  scope :visible, ->(state=true) { where(visible: state) }
  scope :demo, ->(state=true) { where(for_demo: state) }

  def name
    vid_name = "#{applied_technique.name}#{primary? ? ' (primary)' : ''}"
    if description.present?
      vid_name += " (#{description})"
    end
    vid_name
  end

  def show_video?
    youtube_code && youtube_code != 'n/a'
  end

  def self.show_video?(video=nil)
    VIDEOS_ONLINE && !video.nil? && video.show_video? && App.connected_to_youtube?
  end

  def self.demo_videos
    demo.select{|v| v.show_video?}
  end
end
