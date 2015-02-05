show_videos ||= nil
json.formats waza_formats do |waza_format|
  json.partial! 'api/wazas/waza_format', waza_format: waza_format, show_videos: show_videos
end
