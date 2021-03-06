class WazaFormat < ActiveRecord::Base
  include SeedFuSerializeable
  after_save :update_waza_keywords

  belongs_to :waza
  belongs_to :format
  belongs_to :rank

  has_many :waza_format_videos
  has_many :videos, through: :waza_format_videos
  accepts_nested_attributes_for :videos, allow_destroy: true

  has_one :stance, through: :waza
  has_one :attack, through: :waza
  has_one :technique, through: :waza
  has_one :direction, through: :waza

  has_many :user_notes, inverse_of: :waza_format
  has_many :review_notes, inverse_of: :waza_format

  scope :rank_order, -> { joins(:rank).order('ranks.position') }
  scope :format_order, -> { joins(:format).order('formats.position') }

  def first_video(options={})
    options.reverse_merge!(recent_only: false)
    Video.first_video(videos, options)
  end

  def waza_name
    waza.name rescue ""
  end

  def format_name
    format.name rescue ""
  end

  def name
    parts = waza_name
    parts += " (#{format_name})" if format_name
  end

  def rank_name
    rank.label rescue "Not Ranked"
  end

  def keywords
    waza.keywords
  end

  def update_waza_keywords
    waza.set_keywords
  end
end
