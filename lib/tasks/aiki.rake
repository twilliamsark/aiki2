namespace :aiki do

  task add_keywords: :environment do
    Waza.all.each do |waza|
      words = waza.set_keywords
      puts "Update keywords for Waza:#{waza.id}:#{waza.name} to #{words}"
    end
  end

  task dump_to_seed_fu: :environment do
    klasses = %w(Stance Attack Technique Direction Waza Format AttackHeight Style Sensei Rank Kata WazaFormat WazaFormatVideo)
    klasses.each do |klass|
      klass.constantize.to_seed_fu
    end
  end

  task dump_video_seed_fu: :environment do
    Video.to_seed_fu
  end

  namespace :release do
    # namespace :ichi do
    #   task all: [:add_sensei_to_video, :add_copyright_to_video]

    #   task add_sensei_to_video: :environment do
    #     Video.where("sensei = '' or sensei is null").update_all(sensei: 'John Bollinger')
    #   end

    #   task add_copyright_to_video: :environment do
    #     Video.where("copyright = '' or copyright is null").update_all(copyright: 'Aikido Center of San Antonio, Copyright 2014')
    #   end
    # end

    namespace :ni do
      task all: [:associate_sensei_records_with_videos]

      task associate_sensei_records_with_videos: :environment do
        s = Sensei.where(name: 'John Bollinger', dojo: 'Aikido Center of San Antonio').first_or_create
        Video.where(sensei_id: nil).update_all(sensei_id: s)
      end

    end
  end

  namespace :oneoff do
    # task move_style_to_videos: :environment do
    #   Video.where(style_id: nil).each do |video|
    #     style_id = video.applied_technique.style_id
    #     video.update_column('style_id', style_id) if style_id
    #   end
    # end

    # task move_attack_height_to_videos: :environment do
    #   Video.where(attack_height_id: nil).each do |video|
    #     attack_height_id = video.applied_technique.attack_height_id
    #     video.update_column('attack_height_id', attack_height_id) if attack_height_id
    #   end
    # end

    # task set_name_on_videos: :environment do
    #   Video.where(name: nil).each do |video|
    #     name = video.applied_technique.name
    #     video.update_column('name', name) if name.present?
    #   end
    # end

    # task make_waza_formats: :environment do
    #   Waza.all.each do |w|
    #     w.waza_formats.where(rank_id: w.rank_id, format_id: w.format_id, kata_id: w.kata_id, on_test: w.on_test).first_or_create
    #   end
    # end

    # task associate_videos_waza_formats: :environment do
    #   Video.where(waza_format_id: nil).each do |video|
    #     next if video.waza_id.nil?
    #     wf = WazaFormat.find_by(waza_id: video.waza_id)
    #     video.update_column('waza_format_id', wf.id) unless wf.nil?
    #   end
    # end

    # task create_waza_format_videos: :environment do
    #   Video.all.each do |video|
    #     next unless video.waza_format_id
    #     wfv = WazaFormatVideo.where(video_id: video.id, waza_format_id: video.waza_format_id).first_or_create
    #     puts wfv.to_h if wfv
    #     video.update_column('waza_format_id', nil) if wfv && wfv.valid?
    #   end
    # end
  end

end
