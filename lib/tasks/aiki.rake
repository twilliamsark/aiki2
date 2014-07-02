namespace :aiki do

  task add_keywords: :environment do
    ats = AppliedTechnique.all
    ats.each do |at|
      at.set_keywords
      puts
    end
  end

  task dump_to_seed_fu: :environment do
    klasses = %w(AttackHeight Format Stance Waza Direction Rank Attack Kata Technique AppliedTechnique Video)
    klasses.each do |klass|
      SeedFu::Writer.write($stdout, { class_name: klass, constraints: [:id]}) do |writer|
        klass.constantize.all.each do |obj|
          writer.add(obj.to_hash)
        end
      end
    end
  end
end
