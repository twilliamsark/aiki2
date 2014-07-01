class ChangeActiveToVisibleOnVideos < ActiveRecord::Migration
  def change
    rename_column :videos, :active, :visible
  end
end
