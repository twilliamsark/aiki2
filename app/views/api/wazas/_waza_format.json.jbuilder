show_videos ||= nil
json.name waza_format.format_name
if !waza_format.description.blank?
  json.description waza_format.description
end
json.rank waza_format.rank_name
json.on_test waza_format.on_test
if show_videos
  json.partial! 'api/wazas/videos', videos: waza_format.videos
end
