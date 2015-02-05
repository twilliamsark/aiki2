json.waza do
  json.id waza.id
  json.name waza.name

  if !waza.short_description.blank?
    json.short_description waza.short_description
  end

  if !waza.description.blank?
    json.description waza.description
  end

  if waza.stance
    stance = waza.stance
    json.stance do
      json.name stance.name
      json.description stance.description
    end
  end

  if waza.attack
    attack = waza.attack
    json.attack do
      json.name attack.name
      json.description attack.description
    end
  end

  if waza.technique
    technique = waza.technique
    json.technique do
      json.name technique.name
      json.description technique.description
    end
  end

  if waza.direction
    direction = waza.direction
    json.direction do
      json.name direction.name
      json.description direction.description
    end
  end

  if waza.waza_formats.any?
    json.partial! 'api/wazas/waza_formats', waza_formats: waza.waza_formats, show_videos: true
  end
end
