module HasVideos
  extend ActiveSupport::Concern

  included do
    has_many :videos, through: :applied_techniques

    has_many :aikido_videos, through: :aikido_techniques, source: :videos
    has_many :aikido_techniques, -> { aikido_techniques }, class_name: 'AppliedTechnique'

    has_many :iaido_videos, through: :iaido_techniques, source: :videos
    has_many :iaido_techniques, -> { iaido_techniques }, class_name: 'AppliedTechnique'

    scope :default_order, -> { order(:name) }
  end

  module ClassMethods
    def aikido_videos
      videos = self.default_order.map{|r| r.aikido_videos}.flatten
      video_selection(videos)
    end

    def iaido_videos
      videos = self.default_order.map{|r| r.iaido_videos}.flatten
      video_selection(videos)
    end

    private
    def video_selection(videos)
      selection = {}
      videos.each do |video|
        selection[video.applied_technique.send(self.to_s.underscore)] ||= []
        entry = {
          video: video,
          list_name: video.applied_technique.name
        }
        if SHOW_DEBUG
          entry[:list_name] += "(#{video.youtube_code})"
        end
        selection[video.applied_technique.send(self.to_s.underscore)] << entry
      end
      selection
    end
  end

end
