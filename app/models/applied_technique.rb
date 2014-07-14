class AppliedTechnique < ActiveRecord::Base
  include SeedFuSerializeable

  belongs_to :technique, inverse_of: :applied_techniques
  belongs_to :attack, inverse_of: :applied_techniques
  belongs_to :stance, inverse_of: :applied_techniques
  belongs_to :direction, inverse_of: :applied_techniques
  belongs_to :waza, inverse_of: :applied_techniques
  belongs_to :rank, inverse_of: :applied_techniques
  belongs_to :kata, inverse_of: :applied_techniques
  belongs_to :format, inverse_of: :applied_techniques
  belongs_to :attack_height, inverse_of: :applied_techniques

  has_many :videos, inverse_of: :applied_technique
  accepts_nested_attributes_for :videos

  has_one :related, class_name: 'AppliedTechnique', foreign_key: :related_id
  belongs_to :related, class_name: 'AppliedTechnique'

  after_save :set_keywords

  scope :aikido_techniques, -> {joins(:format).merge(Format.aikido).order(:name)}
  scope :iaido_techniques, -> {joins(:format).merge(Format.aiki_toho).order(:position)}

  scope :testable, ->(on_test) { where(on_test: on_test) }
  scope :for_format, ->(format) { where(format_id: format) }
  scope :for_direction, ->(direction) { where(direction_id: direction) }
  scope :for_technique, ->(technique) { where(technique_id: technique) }
  scope :for_stance, ->(stance) { where(stance_id: stance) }
  scope :for_waza, ->(waza) { where(waza_id: waza) }
  scope :for_attack, ->(attack) { where(attack_id: attack) }
  scope :for_rank, ->(rank) { where(rank_id: rank) }

  scope :search, ->(keyword) { where('keywords like ?', "%#{keyword.downcase}%") if keyword.present? }

  scope :visible,
   -> { joins(:videos).merge(Video.visible) }

  scope :demo,
   -> { joins(:videos).merge(Video.demo) }

  def self.build_selection(applied_techniques, klass=nil)
    selection = {}

    applied_techniques.each do |at|
      selection_key = if !klass.nil?
        at.send(klass.to_s.underscore)
      else
        'Search Results'
      end

      selection[selection_key] ||= []
      selection[selection_key] << at
    end
    selection
  end

  def first_video
    video = videos.primary.first
    video = videos.visible.first unless video
    video
  end

  def demo_videos?
    videos.demo.any?
  end

  def visible_videos?
    videos.visible.any?
  end

  def aiki_toho?
    format.name == Format::AIKI_TOHO rescue false
  end

  def set_keywords()
    technique_name = name.downcase
    keywords = [technique_name, technique_name.gsub(/\s/,'')]

    attribs = [:technique, :attack, :stance,
               :direction, :waza, :rank,
               :format, :kata, :attack_height]

    attribs.each do |attrib|
      keyword_list = self.send(attrib).keywords || "" rescue ""
      keywords << keyword_list if keyword_list.present?
    end

    keywords = keywords.flatten.join(' ')

    self.update_column(:keywords, keywords)
    AppLogging.say("Update keywords for AT:#{id} to #{self.keywords}")
  end

  def list_name
    lname = name
    if short_description.present?
      lname += " - #{short_description}"
    end
    if on_test?
      lname += " (on test)"
    end
    lname
  end
end
