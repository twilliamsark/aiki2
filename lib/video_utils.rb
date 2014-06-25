module VideoUtils
  def self.video_collection(videos, klass=nil)
    selection = {}
    videos.compact!
    videos.each do |video|
      selection_key = if !klass.nil?
        video.applied_technique.send(klass.to_s.underscore)
      else
        'Search Results'
      end

      selection[selection_key] ||= []
      entry = {
        video: video,
        list_name: video.applied_technique.name
      }
      if video.applied_technique.short_description.present?
        entry[:list_name] += " - #{video.applied_technique.short_description}"
      end
      if video.applied_technique.on_test?
        entry[:list_name] += " (on test)"
      end
      selection[selection_key] << entry
    end
    selection
  end
end
