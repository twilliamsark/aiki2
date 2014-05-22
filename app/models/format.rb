class Format < ActiveRecord::Base
  include HasVideos
  include Filterable

  # brittle
  ANY_FORMAT = "1"

  has_many :applied_techniques, inverse_of: :format

  def self.options_for_select
    Format.all.inject({}) { |options_hash, format| options_hash[format.label] = format.id; options_hash }
  end
end
