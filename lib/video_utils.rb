module VideoUtils
  def self.show_video?(video, user)
    return false unless user && !video.nil?
    return true if user.admin?
    return true if video.show_video? && video.visible? && user.regular?
    return true if video.show_video? && video.for_demo? && user.demo?
    return false
  end

  def self.visible_videos(videos, user)
    return [] unless videos.any?
    videos.select{|vid| show_video?(vid, user)}
  end

  def self.show_videos?(videos, user)
    return false unless videos.any?
    videos.select{|vid| show_video?(vid, user)}.any?
  end
end
