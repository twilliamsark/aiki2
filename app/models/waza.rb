class Waza < ActiveRecord::Base
  include SeedFuSerializeable
  before_save :set_name

  belongs_to :stance, inverse_of: :wazas
  belongs_to :attack, inverse_of: :wazas
  belongs_to :technique, inverse_of: :wazas
  belongs_to :direction, inverse_of: :wazas

  has_many :waza_formats, inverse_of: :waza
  accepts_nested_attributes_for :waza_formats, allow_destroy: true

  has_many :ranks, through: :waza_formats
  has_many :formats, through: :waza_formats
  has_many :videos, through: :waza_formats

  has_many :katas, through: :videos
  has_many :senseis, through: :videos
  has_many :attack_heights, through: :videos
  has_many :styles, through: :videos

  after_save :set_keywords

  scope :distinct_model, -> { uniq }
  scope :default_order, -> { order(:name) }
  scope :for_direction, ->(direction) { where(direction_id: direction) }
  scope :for_technique, ->(technique) { where(technique_id: technique) }
  scope :for_stance, ->(stance) { where(stance_id: stance) }
  scope :for_attack, ->(attack) { where(attack_id: attack) }

  # scope :search, ->(keyword) { where('keywords like ?', "%#{keyword.downcase}%") if keyword.present? }

  scope :visible,
   -> { joins(:videos).merge(Video.visible) }

  scope :demo,
   -> { joins(:videos).merge(Video.demo) }


  def self.master_hash(options={})
    master = Hash.new
    Waza.all.sort_by(&:name).each do |waza|
      next unless include_waza?(waza, options)
      next unless include_format?(waza.formats.map(&:name), options)
      master[waza.name] ||= Hash.new
      if waza.waza_formats
        waza.waza_formats.each do |waza_format|
          master[waza.name][waza_format.format.name] ||= Array.new
          unless master[waza.name][waza_format.format.name].include?(waza_format)
            master[waza.name][waza_format.format.name] << waza_format
          end
        end
      end
    end
    master
  end

  def self.recent_master_hash
    master = Hash.new

    Video.recent.each do |video|
      video.waza_formats.each do |waza_format|
        waza = waza_format.waza
        master[waza.name] ||= Hash.new
        master[waza.name][waza_format.format.name] ||= Array.new
        unless master[waza.name][waza_format.format.name].include?(waza_format)
          master[waza.name][waza_format.format.name] << waza_format
        end
      end
    end
    master
  end

  def self.include_format?(formats, options)
    return true unless options[:format].present? && formats.any?
    formats.include? options[:format]
  end

  def self.include_waza?(waza, options)
    return true if options.empty?

    technique_include = options[:technique].present? ? false : true
    if options[:technique].present? && waza.technique
      technique_include = options[:technique] == waza.technique.name
    end

    stance_include = options[:stance].present? ? false : true
    if options[:stance].present? && waza.stance
      stance_include = options[:stance] == waza.stance.name
    end

    return technique_include && stance_include
  end

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

  def waza_formats_hash
    hash = {}
    return hash unless waza_formats.any?
    waza_formats.rank_order.each do |wf|
      hash[wf.format] ||= {}
      hash[wf.format][wf.rank] = wf
    end
    hash
  end

  def aiki_toho?
    formats.aiki_toho.any?
  end

  def first_waza_format
    waza_formats.format_order.first
  end

  def first_video(format)
    return nil unless waza_formats.any?
    wfs = waza_formats.where(format: format).rank_order
    wfs.first.first_video
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
      waza_attribs << self.send(attrib, true)
    end

    collection_attribs = [:videos, :formats,
                          :ranks, :katas,
                          :senseis, :attack_heights, :styles]

    collection_attribs.each do |attribs|
      self.send(attribs, true).distinct_model.each do |attrib|
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

  def set_name
    return if name.present?
    do_set_name
  end

  def do_set_name
    name_parts = []
    [:stance, :attack, :technique, :direction].each do |sym|
      attr = self.send(sym)
      name_parts << attr.name if attr
    end
    self.name = name_parts.join(' ')
  end
end
