json.sort_type @sort_class
json.sort_keys @selection.keys do |sort_key|
  json.sort_label sort_key.label
  json.wazas @selection[sort_key] do |waza|
    json.name waza.name
    json.url api_waza_url(waza)
    json.formats waza.formats do |format|
      json.name format.name
      json.url api_waza_format_url(waza, format)
    end
  end
end
