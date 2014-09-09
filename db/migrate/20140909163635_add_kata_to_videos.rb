class AddKataToVideos < ActiveRecord::Migration
  def up
    add_column :videos, :kata_id, :integer
    add_column :videos, :kata_number, :integer
    add_index :videos, :kata_id
  end

  def down
    remove_index :videos, :kata_id
    remove_column :videos, :kata_id
    remove_column :videos, :kata_number
  end
end
