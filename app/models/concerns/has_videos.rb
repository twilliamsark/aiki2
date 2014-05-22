module HasVideos
  extend ActiveSupport::Concern

  included do
    has_many :videos, through: :applied_techniques

    # has_many :aikido_videos, through: :aikido_techniques, source: :videos
    has_many :aikido_techniques, -> { aikido_techniques }, class_name: 'AppliedTechnique'

    has_many :iaido_videos, through: :iaido_techniques, source: :videos
    has_many :iaido_techniques, -> { iaido_techniques }, class_name: 'AppliedTechnique'

    scope :default_order, -> { order(:name) }
  end

  # def aikido_videos
  #   videos.for_aikido
  # end

  # def aikido_videos_for_format(format)
  #   videos.for_aikido_format(format)
  # end

  # def aikido_videos_for_technique(technique)
  #   videos.for_aikido_technique(technique)
  # end

  # def aikido_videos_for_direction(direction)
  #   videos.for_aikido_direction(direction)
  # end

  # rank.aikido_vids([['format', 7], ['technique', 8]])
  def aikido_vids(filters={})
    vids = videos.for_aikido
    filters.each do |filter, value|
      next if value == "1" #ugly, brittle, fix this
      vids = vids.send("for_aikido_#{filter.to_s}", value)
    end
    vids.flatten
  end

  module ClassMethods
    def aikido_videos(filter_options={})
      filter_options.reverse_merge!(
                                    format: Format::ANY_FORMAT,
                                    technique: Technique::ANY_TECHNIQUE,
                                    direction: Direction::ANY_DIRECTION,
                                    stance: Stance::ANY_STANCE,
                                    waza: Waza::ANY_WAZA,
                                    testing_level: TestingLevel::ANY_TESTING_LEVEL,
                                    attack: Attack::ANY_ATTACK,
                                    rank: Rank::ANY_RANK
                                    )

      videos = self.default_order.map do |a|
        a.aikido_vids(filter_options)
      end.flatten

      video_selection(videos)
    end

    # format_type ignored for iaido
    def iaido_videos(filter_options={})
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
