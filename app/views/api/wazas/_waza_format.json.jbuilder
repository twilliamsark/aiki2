show_videos ||= nil
if waza_format.format
  json.name waza_format.format.name
  if waza_format.format.description.present?
    json.description waza_format.format.description
  end
end

if !waza_format.description.blank?
  json.extra_description waza_format.description
end

json.rank waza_format.rank_name
json.on_test waza_format.on_test
if show_videos
  json.partial! 'api/wazas/videos', videos: waza_format.videos
end
