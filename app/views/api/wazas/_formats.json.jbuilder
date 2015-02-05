json.formats formats do |format|
  json.name format.name
  if format.description.present?
    json.description format.description
  end
  if waza
    json.url api_waza_format_url(waza, format)
  end
end
