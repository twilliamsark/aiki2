json.selection do
  json.key_type @sort_class
  json.keys @selection.keys do |key|
    json.label key.label
    json.wazas @selection[key] do |waza|
      json.name waza.name
      json.url api_waza_url(waza)
      json.formats waza.formats do |format|
        json.name format.name
        json.url api_waza_format_url(waza, format)
      end
    end
  end
end
