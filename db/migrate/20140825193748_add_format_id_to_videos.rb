class AddFormatIdToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :format_id, :integer
  end
end
