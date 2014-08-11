module HasVideos
  extend ActiveSupport::Concern

  SELECT_ANY = 1

  included do
    has_many :videos, through: :applied_techniques

    has_many :aikido_techniques, -> { aikido_techniques }, class_name: 'AppliedTechnique'
    has_many :iaido_techniques, -> { iaido_techniques }, class_name: 'AppliedTechnique'

    scope :default_order, -> { order(:name) }
  end

  def label
    "#{name}#{(self.respond_to?(:short_description) && short_description.present?) ? ' - ' + short_description : '' }"
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
      next if value == SELECT_ANY
      ats = ats.send("for_#{filter.to_s}", value)
    end

    ats.compact!
    ats = ats.select {|at| VideoUtils.show_videos?(at.videos, current_user)} if current_user

    ats.flatten
  end

  module ClassMethods
    # selection = "Rank".constantize.send(:get_applied_techniques, "Aikido".downcase, {}, User.first)
    # to see the list of videos returned
    # videos = selection.values.map{|ats| ats.map(&:videos)}.flatten
    def get_applied_techniques(art, filter_options={}, current_user)
      filter_options.reverse_merge!(
                                    format: Format::SELECT_ANY,
                                    technique: Technique::SELECT_ANY,
                                    direction: Direction::SELECT_ANY,
                                    stance: Stance::SELECT_ANY,
                                    waza: Waza::SELECT_ANY,
                                    attack: Attack::SELECT_ANY,
                                    rank: Rank::SELECT_ANY,
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

    def options_for_select(options={})
      options.reverse_merge!(include_any: true, exclusion_names: [])
      options[:exclusion_names] = [ options[:exclusion_names] ] if options[:exclusion_names].is_a? String

      initial_hash = (options[:include_any] && self != Kata) ? {'Any' => SELECT_ANY} : {}

      where = options[:exclusion_names].map{|n| "name != '#{n}'"}.join(' and ')
      self.where(where).default_order.to_a
        .inject(initial_hash) do |options_hash, format|
          options_hash[format.label] = format.id
          options_hash
        end
    end
  end

end
