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
  # has_many :katas, through: :waza_formats

  validates :youtube_code, presence: true

  after_initialize do |video|
    video.youtube_code = 'n/a' unless video.youtube_code.present?
  end

  scope :primary, -> { where(primary: true) }
  scope :secondary, -> { where(primary: false) }

  scope :visible, ->(state=true) { where(visible: state) }
  scope :demo, ->(state=true) { where(for_demo: state) }

  def name(options={})
    options.reverse_merge!(format: false, description: false)

    base_name = attributes['name'] || waza.name

    return base_name unless options[:description] || options[:format]

    if formats.any? || discription.present?
      name_parts = []
      name_parts << format_name if formats.any? && options[:format]
      name_parts << description if description.present? && options[:description]
      base_name += " (#{name_parts.join(' - ')})" if name_parts.any?
    end

    base_name
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
end
