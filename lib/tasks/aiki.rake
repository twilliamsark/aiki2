namespace :aiki do

  task add_keywords: :environment do
    ats = AppliedTechnique.all
    ats.each do |at|
      at.set_keywords
      puts
    end
  end

  task dump_to_seed_fu: :environment do
    klasses = %w(AttackHeight Format Stance Waza Direction Rank Attack Kata Technique AppliedTechnique Sensei)
    klasses.each do |klass|
      klass.constantize.to_seed_fu
    end
  end

  task dump_video_seed_fu: :environment do
    Video.to_seed_fu
  end

  namespace :release do
    namespace :ichi do
      task all: [:add_sensei_to_video, :add_copyright_to_video]

      task add_sensei_to_video: :environment do
        Video.where("sensei = '' or sensei is null").update_all(sensei: 'John Bollinger')
      end

      task add_copyright_to_video: :environment do
        Video.where("copyright = '' or copyright is null").update_all(copyright: 'Aikido Center of San Antonio, Copyright 2014')
      end
    end

    namespace :ni do
      task all: [:associate_sensei_records_with_videos, :move_format_to_videos]

      task associate_sensei_records_with_videos: :environment do
        s = Sensei.where(name: 'John Bollinger', dojo: 'Aikido Center of San Antonio').first_or_create
        Video.where(sensei_id: nil).update_all(sensei_id: s)
      end

      task move_format_to_videos: :environment do
        Video.where(format_id: nil).each do |video|
          format_id = video.applied_technique.format_id
          video.update_column('format_id', format_id) if format_id
        end
      end

      task iaido_move_applied_technique_name_to_video: :move_format_to_videos do
        Video.where(format: Format.iaido).where(name: nil).each do |video|
          video.update_column('name', video.applied_technique.name)
        end
      end
    end

    # namespace :san do

    # end

  end
end
