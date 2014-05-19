class AddPositionToRank < ActiveRecord::Migration
  def change
    add_column :ranks, :position, :integer, default: 99
  end
end
