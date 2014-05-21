class Format < ActiveRecord::Base
  include HasVideos

  # brittle
  NO_FORMAT = "1"

  has_many :applied_techniques, inverse_of: :format

  def self.options_for_select
    Format.all.inject({}) { |options_hash, format| options_hash[format.label] = format.id; options_hash }
  end

  def label
    "#{name}#{short_description.present? ? ' - ' + short_description : '' }"
  end
end
