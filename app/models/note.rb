class Note < ActiveRecord::Base
  include SeedFuSerializeable

  belongs_to :user
  belongs_to :waza_format

  scope :by_user, -> { order(:user_id) }
  scope :by_waza_format, -> { order(:waza_format_id) }
  scope :by_id, -> { order(id: :desc) }
end
