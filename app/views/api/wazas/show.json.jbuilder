if @waza
  json.partial! 'api/wazas/waza', waza: @waza
else
  json.error 'Unable to find waza'
end
