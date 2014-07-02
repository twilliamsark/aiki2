class Kata < ActiveRecord::Base
  include HasVideos

  has_many :applied_techniques, inverse_of: :kata

  def to_hash
    {id: id, name: name, description: description}
  end
end
