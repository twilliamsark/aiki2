json.formats formats do |format|
  json.name format.name
  if waza
    json.url api_waza_format_url(waza, format)
  end
end
