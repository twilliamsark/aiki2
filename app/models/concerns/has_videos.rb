module HasVideos
  extend ActiveSupport::Concern

  included do
    has_many :videos, through: :applied_techniques

    has_many :aikido_techniques, -> { aikido_techniques }, class_name: 'AppliedTechnique'

    has_many :iaido_videos, through: :iaido_techniques, source: :videos
    has_many :iaido_techniques, -> { iaido_techniques }, class_name: 'AppliedTechnique'

    scope :default_order, -> { order(:name) }
  end

  # rank.aikido_vids([['format', 7], ['technique', 8]])
  def vids(art, filters={})
    on_test = filters.has_key?(:testable) ? filters[:testable] : 'all'
    if on_test == 'all'
      method = "for_#{art}"
      vids = videos.send(method)
    else
      method = "for_#{art}_testable"
      vids = videos.send(method, on_test)
    end
    filters.each do |filter, value|
      next if filter == :testable
      next if value == "1" #ugly, brittle, fix this
      vids = vids.send("for_#{art}_#{filter.to_s}", value)
    end
    vids.flatten
  end

  module ClassMethods
    def get_videos(art, filter_options={})
      filter_options.reverse_merge!(
                                    format: Format::ANY_FORMAT,
                                    technique: Technique::ANY_TECHNIQUE,
                                    direction: Direction::ANY_DIRECTION,
                                    stance: Stance::ANY_STANCE,
                                    waza: Waza::ANY_WAZA,
                                    attack: Attack::ANY_ATTACK,
                                    rank: Rank::ANY_RANK,
                                    testable: 'all'
                                    )

      videos = self.default_order.map do |a|
        a.vids(art, filter_options)
      end.flatten

      video_selection(videos)
    end

    # format_type ignored for iaido
    def iaido_videos(filter_options={})
      videos = self.default_order.map{|r| r.videos.for_iaido}.flatten
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
        if video.applied_technique.on_test?
          entry[:list_name] += " (on test)"
        end
        selection[video.applied_technique.send(self.to_s.underscore)] << entry
      end
      selection
    end
  end

end
