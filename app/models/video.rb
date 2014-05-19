class Video < ActiveRecord::Base
  belongs_to :applied_technique, inverse_of: :videos

  def show_video?
    youtube_code && youtube_code != 'n/a'
  end

  def self.show_video?(video=nil)
    VIDEOS_ONLINE && !video.nil? && video.show_video? && App.connected_to_youtube?
  end
end
