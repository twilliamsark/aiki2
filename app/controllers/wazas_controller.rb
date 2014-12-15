class WazasController < ApplicationController
  before_action :signed_in_user, only: [:aikido, :search, :remote_waza, :master_view]
  before_filter :action_params, only: [:aikido, :remote_waza]

  def aikido
    @default_sort = if params[:sort_type]
      params[:sort_type].gsub(/[[:space:]]/,'')
    elsif @waza_id
      'Technique'
    else
      'Rank'
    end

    @selection, @video, @format = wazas(@default_sort, {}, @waza_id, @video_id, @format_id)
    @keys = sort_keys(@selection, @default_sort)

    if @default_sort == 'Rank'
      key = @keys.first
      first_waza = @selection[key].first
      wfs = WazaFormat.where(waza: first_waza, rank: key)
      if wfs
        @video = wfs.first.first_video
      end
    end

    @waza = @video.waza if @video && @waza.nil?

    if @waza && @format
      @waza_format = WazaFormat.find_by(waza_id: @waza.id, format_id: @format.id)
    end

    if @video && !@waza_format
      @waza_format = @video.waza_formats.first
    end

    if !@format && @waza_format
      @foramt = @waza_format.format
    end

    respond_to do |format|
      format.html {
        render :index
      }
      format.js {
        render :video_list
      }
    end
  end

  def master_view
    @master_hash = Waza.master_hash
  end

  # ajax only
  def search
    @default_sort = "Technique"
    @selection = nil
    @video = nil

    @search_term = params[:search]
    @selection, @video = search_videos(@search_term)
    @keys = sort_keys(@selection, @default_sort)
    @waza = @video.wazas.first if @video && @waza.nil?
    @waza_format = @video.waza_formats.first if @video
    render :video_list
  end

  # ajax only
  def remote_waza
    @waza = Waza.find_by_id(@waza_id)
    if @waza
      if @video_id
        @video = Video.find_by_id(@video_id)
        unless @video.wazas.include? @waza
          @video = nil
          @video_id = nil
        end
      else
        @video = @waza.first_video(@waza.first_waza_format.format)
      end

      if @video
        @waza_format = @video.waza_formats.first
      else
        @waza_format = @waza.first_waza_format
      end
    end
  end

  private

  def wazas(sort_class, filters={}, waza_id = nil, video_id = nil, format_id = nil)
    if !waza_id.nil?
      @waza = Waza.find_by_id(waza_id)
      unless @waza
        waza_id = nil
        @waza = nil #being explicit
      end
    end

    if !format_id.nil?
      @format = Format.find_by_id(format_id)
    end

    if !waza_id.nil?
      if !video_id.nil?
        video = Video.find_by_id(video_id)
      elsif @format
        video = @waza.first_video(@format)
      else
        @format = @waza.first_waza_format.format rescue nil
        video = @waza.first_video(@format)
      end

      unless !video.nil? && video.wazas.include?(@waza) && VideoUtils.show_video?(video, current_user)
        video_id = nil
        video = nil
      end
    end

    selection = sort_class.constantize.send(:get_wazas, current_user)
    if video.nil? && waza_id.nil?
      first_selector = selection.keys.first
      wazas = selection[first_selector]
      wazas.each do |waza|
        video = waza.first_video(waza.first_waza_format.format)
        if !video.nil?
          @waza = waza
          break
        end
      end unless wazas.nil?
    end

    return [selection, video, @format]
  end

  def search_videos(search)
    waza_formats = Waza.search(search).map(&:waza_formats).flatten.compact.uniq

    waza_formats = waza_formats.select {|wf| VideoUtils.show_videos?(wf.videos, current_user)}
    first_video = nil
    waza_formats.each do |wf|
      first_video = wf.waza.first_video(wf.format)
      break if first_video
    end

    selection = Waza.build_selection(waza_formats)
    return [selection, first_video]
  end

  def sort_keys(selection, sort_class)
    sort_field = sort_class == 'Rank' ? 'position' : 'name'
    selection.keys.sort{|x,y| x.send(sort_field) <=> y.send(sort_field)}
  end

  def action_params
    @waza_id = params[:waza]
    @video_id = params[:video]
    @format_id = params[:format_type]
  end
end
