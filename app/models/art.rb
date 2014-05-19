class Art < ActiveRecord::Base
  include HasVideos

  has_many :applied_techniques, inverse_of: :art

  # scope :aikido, -> {where(name: 'Aikido')}
  # scope :iaido, -> {where(name: 'Iaido')}

  def self.aikido
    Art.find_by_name('Aikido')
  end

  def self.iaido
    Art.find_by_name('Iaido')
  end
end
