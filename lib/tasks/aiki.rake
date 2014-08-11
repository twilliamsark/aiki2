namespace :aiki do

  task add_keywords: :environment do
    ats = AppliedTechnique.all
    ats.each do |at|
      at.set_keywords
      puts
    end
  end

  task dump_to_seed_fu: :environment do
    klasses = %w(AttackHeight Format Stance Waza Direction Rank Attack Kata Technique AppliedTechnique)
    klasses.each do |klass|
      klass.constantize.to_seed_fu
    end
  end

  task dump_video_seed_fu: :environment do
    Video.to_seed_fu
  end
end
