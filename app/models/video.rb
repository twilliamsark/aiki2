class Video < ActiveRecord::Base
  include Filterable
  include SeedFuSerializeable

  has_many :waza_format_videos
  has_many :waza_formats, through: :waza_format_videos

  belongs_to :attack_height, inverse_of: :videos
  belongs_to :style, inverse_of: :videos
  belongs_to :sensei, inverse_of: :videos
  belongs_to :kata, inverse_of: :videos

  has_many :wazas, through: :waza_formats
  has_many :formats, through: :waza_formats
  has_many :ranks, through: :waza_formats

  has_many :stances, through: :wazas
  has_many :attacks, through: :wazas
  has_many :techniques, through: :wazas
  has_many :directions, through: :wazas

  validates :youtube_code, presence: true

  after_initialize do |video|
    video.youtube_code = 'n/a' unless video.youtube_code.present?
  end

  scope :primary, -> { where(primary: true) }
  scope :secondary, -> { where(primary: false) }

  scope :visible, ->(state=true) { where(visible: state) }
  scope :demo, ->(state=true) { where(for_demo: state) }
  scope :recent, -> { where(arel_table[:created_at].gt(30.days.ago)).order(created_at: :desc) }

  def self.videos_csv
    all.each {|v| puts v.to_csv}
  end

  def self.primary_videos_csv
    primary.each {|v| puts v.to_csv}
  end

  def self.first_video(videos, options={})
    options.reverse_merge!(recent_only: false)
    videos = videos.recent if options[:recent_only]
    return nil unless videos.any?
    video = videos.visible.primary.first
    video = videos.visible.first unless video
    video = videos.first unless video
    video
  end

  def name(options={})
    options.reverse_merge!(format: false, description: false)

    base_name = attributes['name']
    unless base_name.present?
      base_name = waza_formats.first ? waza_formats.first.name : nil
    end

    return base_name unless options[:description] || options[:format]

    if formats.any? || discription.present?
      name_parts = []
      name_parts << format_name if formats.any? && options[:format]
      name_parts << description if description.present? && options[:description]
      base_name += " (#{name_parts.join(' - ')})" if name_parts.any?
    end

    base_name
  end

  def first_waza
    waza_formats.first.waza rescue nil
  end

  def first_waza_format
    waza_formats.first rescue nil
  end

  def format_name
    formats.map(&:name).join(', ') rescue "" if formats.any?
  end

  def kata_name
    return "" unless kata
    kname = kata.name
    if !kata_number.nil?
      kname += " (Kata #{kata_number})"
    end
    kname
  end

  def valid_youtube_code?
    youtube_code.present? && youtube_code != 'n/a'
  end

  def self.show_video?(video=nil)
    VIDEOS_ONLINE && !video.nil? && video.valid_youtube_code? && App.connected_to_youtube?
  end

  def to_csv
    csv = [id, name, first_waza_format.format_name, first_waza_format.waza_name, first_waza_format.rank_name]
    csv << (first_waza_format.on_test ? 'on test' : 'learn for rank')
    csv << (primary ? 'primary' : 'secondary')
    csv << (visible ? 'visible' : 'hidden')
    csv << (for_demo ? 'demo' : 'not in demo')
    csv.join(', ')
  end
end
