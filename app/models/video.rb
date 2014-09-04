class Video < ActiveRecord::Base
  include SeedFuSerializeable

  belongs_to :waza_format, inverse_of: :videos
  belongs_to :attack_height, inverse_of: :videos
  belongs_to :style, inverse_of: :videos
  belongs_to :sensei, inverse_of: :videos

  has_one :waza, through: :waza_format
  has_one :format, through: :waza_format
  has_one :rank, through: :waza_format
  has_one :kata, through: :waza_format

  validates :youtube_code, presence: true

  # after_save :update_waza_keywords

  after_initialize do |video|
    video.youtube_code = 'n/a' unless video.youtube_code.present?
  end

  scope :primary, -> { where(primary: true) }
  scope :secondary, -> { where(primary: false) }

  scope :visible, ->(state=true) { where(visible: state) }
  scope :demo, ->(state=true) { where(for_demo: state) }

  def name(options={})
    options.reverse_merge!(more_info: false)
    return attributes['name'] unless options[:more_info]

    base_name = attributes['name']

    if format.name.present? || discription.present?
      name_parts = []
      name_parts << format.name if format.name.present?
      name_parts << description if description.present?
      base_name += " (#{name_parts.join(' - ')})"
    end

    base_name
  end

  def valid_youtube_code?
    youtube_code.present? && youtube_code != 'n/a'
  end

  def self.show_video?(video=nil)
    VIDEOS_ONLINE && !video.nil? && video.valid_youtube_code? && App.connected_to_youtube?
  end

  # def self.keywords(videos)
  #   videos.map{|v| [v.sensei.name, v.description] }.flatten.uniq.select{|k| k.present? }.map(&:downcase)
  # end

  private

  # def update_waza_keywords
  #   waza.set_keywords
  # end

end
