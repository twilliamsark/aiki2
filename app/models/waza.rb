class Waza < ActiveRecord::Base
  include SeedFuSerializeable

  belongs_to :stance, inverse_of: :wazas
  belongs_to :attack, inverse_of: :wazas
  belongs_to :technique, inverse_of: :wazas
  belongs_to :direction, inverse_of: :wazas

  has_many :waza_formats, inverse_of: :waza

  has_many :ranks, through: :waza_formats
  has_many :katas, through: :waza_formats

  has_many :formats, through: :waza_formats

  has_many :videos, through: :waza_formats
  has_many :senseis, through: :videos
  has_many :attack_heights, through: :videos
  has_many :styles, through: :videos

  after_save :set_keywords

  scope :distinct, -> { uniq }
  scope :for_direction, ->(direction) { where(direction_id: direction) }
  scope :for_technique, ->(technique) { where(technique_id: technique) }
  scope :for_stance, ->(stance) { where(stance_id: stance) }
  scope :for_attack, ->(attack) { where(attack_id: attack) }

  # scope :search, ->(keyword) { where('keywords like ?', "%#{keyword.downcase}%") if keyword.present? }

  scope :visible,
   -> { joins(:videos).merge(Video.visible) }

  scope :demo,
   -> { joins(:videos).merge(Video.demo) }

  def self.search(keyword)
    results = []
    if keyword.present?
      results = where('keywords like ?', "%#{keyword.downcase}%")
      if keyword.downcase == 'ikkyo'
        results.reject!{|r| r.keywords.include?('nikkyo') }
      end
    end
    results
  end

  def self.build_selection(waza_formats, klass=nil)
    selection = {}

    waza_formats.each do |wf|
      key = if !klass.nil?
        wf.send(klass.to_s.underscore)
      else
        'Search Results'
      end
      next if key.nil?

      selection[key] ||= []
      selection[key] << wf.waza unless selection[key].include?(wf.waza)
    end

    selection.keys.each do |key|
      selection[key] = selection[key].sort_by(&:name)
    end

    selection
  end

  def first_video
    wf = waza_formats.rank_order.first

    video = wf.videos.visible.primary.first
    video = wf.videos.visible.first unless video
    video
  end

  def demo_videos?
    videos.demo.any?
  end

  def visible_videos?
    videos.visible.any?
  end

  def set_keywords
    technique_name = name.downcase
    keywords = [technique_name, technique_name.gsub(/\s/,'')]

    waza_attribs = []

    single_attribs = [:stance, :attack, :technique, :direction]

    single_attribs.each do |attrib|
      waza_attribs << attrib
    end

    collection_attribs = [:videos,
                          :ranks, :katas,
                          :senseis, :attack_heights, :styles]

    collection_attribs.each do |attribs|
      self.send(attribs).distinct.each do |attrib|
        waza_attribs << attrib
      end
    end

    waza_attribs.each do |attrib|
      keyword_list = attrib.keywords || "" rescue ""
      keywords << keyword_list if keyword_list.present?
    end

    keywords = keywords.flatten.join(' ').strip

    self.update_column(:keywords, keywords)
    keywords
  end

  def list_name
    lname = name
    if short_description.present?
      lname += " - #{short_description}"
    end
    lname
  end
end
