module WazasHelper
  def available_formats(waza, current_format)
    formats = Format.default_order
    wfh = waza.waza_formats_hash
    return [formats, wfh, format_tab_states(formats, wfh.keys, current_format)]
  end

  def format_tab_states(formats, used_formats, current_format)
    format_states = {}
    formats.each do |format|
      format_states[format] = {}

      format_states[format][:state] = if format == current_format
        'active'
      elsif !used_formats.include?(format)
        'disabled'
      else
        ''
      end
    end
    format_states
  end
end
