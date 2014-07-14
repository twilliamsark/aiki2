module HasVideos
  extend ActiveSupport::Concern

  included do
    has_many :videos, through: :applied_techniques

    has_many :aikido_techniques, -> { aikido_techniques }, class_name: 'AppliedTechnique'
    has_many :iaido_techniques, -> { iaido_techniques }, class_name: 'AppliedTechnique'

    scope :default_order, -> { order(:name) }
  end

  # rank.aikido_vids([['format', 7], ['technique', 8]])
  def vids(art, filters={}, current_user=nil)
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

    vids.compact!
    vids = vids.select {|vid| VideoUtils.show_video?(vid, current_user)} if current_user

    vids.flatten
  end

  def get_applied_techniques(art, filters={}, current_user=nil)
    on_test = filters.has_key?(:testable) ? filters[:testable] : 'all'
    if on_test == 'all'
      method = "#{art}_techniques"
      ats = applied_techniques.send(method)
    else
      method = "#{art}_techniques"
      ats = applied_techniques.testable(on_test).send(method)
    end

    filters.each do |filter, value|
      next if filter == :testable
      next if value == "1" #ugly, brittle, get rid of the 'Any'
      ats = ats.send("for_#{filter.to_s}", value)
    end
    ats.compact!
    ats = ats.select {|at| VideoUtils.show_videos?(at.videos, current_user)} if current_user

    ats.flatten
  end

  module ClassMethods
    def get_videos(art, filter_options={}, current_user)
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
          a.vids(art, filter_options, current_user)
        end.flatten
      else
        videos = self.default_order.map do |a|
          a.vids(art, filter_options, current_user)
        end.flatten
      end
      video_selection(videos)
    end

    def get_applied_techniques(art, filter_options={}, current_user)
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
        ats = Format.iaido.get_applied_techniques(art, filter_options, current_user)
      else
        ats = self.default_order.map do |a|
          a.get_applied_techniques(art, filter_options, current_user)
        end.flatten
      end
      ats.compact!
      AppliedTechnique.build_selection(ats, self)
    end

    private

    def video_selection(videos)
      VideoUtils.video_collection(videos, self)
    end
  end

end
