json.sort_type @sort_class
json.sort_keys @selection.keys do |sort_key|
  json.sort_label sort_key.label
  json.wazas @selection[sort_key] do |waza|
    json.name waza.name
    json.url api_waza_url(waza)
    if waza.formats.any?
      json.partial! 'api/wazas/formats', formats: waza.formats, waza: waza
    end
  end
end
