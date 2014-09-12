class VideosController < ApplicationController
  before_action :correct_user, only: [:new, :create, :destroy]

  def new
  end

  def create
    stance_id = params[:stance_id] || nil
    attack_id = params[:attack_id] || nil
    technique_id = params[:technique_id] || nil
    direction_id = params[:direction_id] && params[:direction_id].any? ? params[:direction_id] : nil

    wazas = get_wazas(stance_id, attack_id, technique_id, direction_id)

    format_id = params[:format_id] && params[:format_id].any? ? params[:format_id] : nil
    rank_id = params[:rank_id] || nil
    on_test = params[:on_test] || nil

    waza_formats = get_waza_formats(wazas, format_id, rank_id, on_test)

    title = params[:title] || nil
    youtube_code = params[:youtube_code] || nil
    sensei_id = params[:sensei_id] || nil
    kata_id = params[:kata_id] || nil
    kata_number = params[:kata_number] || nil
    style_id = params[:style_id] || nil
    attack_height_id = params[:attack_height_id] || nil
    visible = params[:visible]

    video = Video.where(name: title,
                        youtube_code: youtube_code,
                        sensei_id: sensei_id,
                        kata_id: kata_id,
                        kata_number: kata_number,
                        style_id: style_id,
                        attack_height_id: attack_height_id).first_or_create

    video.copyright ||= "Aikido Center of San Antonio, Copyright 2014"
    unless visible.nil?
      video.visible = visible == "1" ? true : false
    end
    video.save

    waza_formats.each do |wf|
      next unless wf.id
      wf.videos << video
    end

    redirect_to aikido_path(waza: wazas.first, video: video, sort_type: "Technique")
  end

  def show
  end

  def destroy
  end

  private

  def video_params
    params.permit(:title, :youtube_code, :sensei_id)
  end

  def correct_user
    user = current_user
    redirect_to(aikido_path) unless user && user.admin?
  end

  def get_wazas(stance_id, attack_id, technique_id, direction_id)
    waza_where = [waza_search_hash(stance_id, attack_id, technique_id, direction_id ? direction_id.first : nil)]
    if direction_id && direction_id.size > 1
      waza_where << waza_search_hash(stance_id, attack_id, technique_id, direction_id ? direction_id.last : nil)
    end

    wazas = []
    waza_where.each do |w_where|
      wazas << Waza.where(w_where).first_or_create
    end
    wazas
  end

  def waza_search_hash(stance_id, attack_id, technique_id, direction_id)
    {
      stance_id: stance_id.present? ? stance_id : nil,
      attack_id: attack_id.present? ? attack_id : nil,
      technique_id: technique_id.present? ? technique_id : nil,
      direction_id: direction_id.present? ? direction_id : nil
    }
  end

  def get_waza_formats(wazas, format_id, rank_id, on_test)
    waza_format_where = []
    wazas.each do |waza|
      next unless waza.id
      format_id.each_with_index do |format, format_index|
        waza_format_where << waza_format_search_hash(waza.id, format_id[format_index], rank_id, on_test)
      end
    end

    waza_formats = []
    waza_format_where.each do |wf_where|
      waza_formats << WazaFormat.where(wf_where).first_or_create
    end
    waza_formats
  end

  def waza_format_search_hash(waza_id, format_id, rank_id, on_test)
    {
      waza_id: waza_id,
      format_id: format_id.present? ? format_id : nil,
      rank_id: rank_id.present? ? rank_id : nil,
      on_test: on_test == "1" ? true : false
    }
  end

end
