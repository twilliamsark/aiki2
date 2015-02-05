json.videos videos do |video|
  next unless video.visible?
  json.extract! video, :name, :youtube_code, :copyright
  if video.kata
    json.kata_type video.kata.name
    if video.kata_number.present?
      json.kata_number video.kata_number
    end
  end
  if video.sensei
    json.senesi video.sensei.name
  end
end
