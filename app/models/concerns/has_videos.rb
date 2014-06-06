module HasVideos
  extend ActiveSupport::Concern

  included do
    has_many :videos, through: :applied_techniques

    has_many :aikido_techniques, -> { aikido_techniques }, class_name: 'AppliedTechnique'
    has_many :iaido_techniques, -> { iaido_techniques }, class_name: 'AppliedTechnique'

    scope :default_order, -> { order(:name) }
  end

  # rank.aikido_vids([['format', 7], ['technique', 8]])
  def vids(art, filters={})
    on_test = filters.has_key?(:testable) ? filters[:testable] : 'all'
    if on_test == 'all'
      method = "for_#{art}"
      vids = videos.primary.send(method)
    else
      method = "for_#{art}_testable"
      vids = videos.primary.send(method, on_test)
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
      if art == 'iaido' && self.to_s == 'Format'
        # There is only one iaido format, no need to loop through them all
        videos = Format.aiki_toho.map do |a|
          a.vids(art, filter_options)
        end.flatten
      else
        videos = self.default_order.map do |a|
          a.vids(art, filter_options)
        end.flatten
      end

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
        if video.applied_technique.short_description.present?
          entry[:list_name] += " - #{video.applied_technique.short_description}"
        end
        if video.applied_technique.on_test?
          entry[:list_name] += " (on test)"
        end
        selection[video.applied_technique.send(self.to_s.underscore)] << entry
      end
      selection
    end
  end

end
