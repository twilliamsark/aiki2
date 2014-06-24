namespace :aiki do

  task add_keywords: :environment do
    ats = AppliedTechnique.all
    ats.each do |at|
      at.set_keywords
      puts
    end
  end

end
