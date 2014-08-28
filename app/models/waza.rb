class Waza < ActiveRecord::Base
  include SeedFuSerializeable

  belongs_to :stance, inverse_of: :wazas
  belongs_to :attack, inverse_of: :wazas
  belongs_to :technique, inverse_of: :wazas
  belongs_to :direction, inverse_of: :wazas

  has_many :waza_formats, inverse_of: :waza

  has_many :videos, through: :waza_formats
  has_many :formats, through: :waza_formats
  has_many :ranks, through: :waza_formats

  # after_save :set_keywords

  scope :for_direction, ->(direction) { where(direction_id: direction) }
  scope :for_technique, ->(technique) { where(technique_id: technique) }
  scope :for_stance, ->(stance) { where(stance_id: stance) }
  scope :for_attack, ->(attack) { where(attack_id: attack) }

  # scope :search, ->(keyword) { where('keywords like ?', "%#{keyword.downcase}%") if keyword.present? }

  scope :visible,
   -> { joins(:videos).merge(Video.visible) }

  scope :demo,
   -> { joins(:videos).merge(Video.demo) }

  def self.build_selection(wazas, klass=nil)
    selection = {}

    wazas.each do |at|
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
    video = videos.visible.primary.first
    video = videos.visible.first unless video
    video
  end

  def demo_videos?
    videos.demo.any?
  end

  def visible_videos?
    videos.visible.any?
  end

  # def set_keywords
  #   technique_name = name.downcase
  #   keywords = [technique_name, technique_name.gsub(/\s/,'')]

  #   attribs = [:technique, :attack, :stance,
  #              :direction, :style, :rank,
  #              :format, :kata, :attack_height]

  #   attribs.each do |attrib|
  #     keyword_list = self.send(attrib).keywords || "" rescue ""
  #     keywords << keyword_list if keyword_list.present?
  #   end

  #   keywords << Video.keywords(videos) if videos.any?

  #   keywords = keywords.flatten.join(' ').strip

  #   self.update_column(:keywords, keywords)
  #   AppLogging.say("Update keywords for AT:#{id} to #{self.keywords}")
  # end

  def list_name
    lname = name
    if short_description.present?
      lname += " - #{short_description}"
    end
    lname
  end
end
