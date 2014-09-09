class WazaFormat < ActiveRecord::Base
  include SeedFuSerializeable

  belongs_to :waza
  belongs_to :format
  belongs_to :rank
  belongs_to :kata

  has_many :waza_format_videos
  has_many :videos, through: :waza_format_videos

  has_one :stance, through: :waza
  has_one :attack, through: :waza
  has_one :technique, through: :waza
  has_one :direction, through: :waza

  scope :rank_order, -> { joins(:rank).order('ranks.position') }
  scope :format_order, -> { joins(:format).order('formats.position') }

  def first_video
    video = videos.visible.primary.first
    video = videos.visible.first unless video
    video
  end

  def waza_name
    waza.name
  end

  def format_name
    format.name rescue ""
  end

  def name
    parts = waza_name
    parts += " (#{format_name})" if format_name
  end

  def rank_name
    rank.label
  end
end
