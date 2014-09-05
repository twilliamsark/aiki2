class RemoveWazaFormatIdFromVideo < ActiveRecord::Migration
  def up
    remove_index :videos, :waza_format_id
    remove_column :videos, :waza_format_id
  end

  def down
    add_column :videos, :waza_format_id, :integer
    add_index :videos, :waza_format_id
  end
end
