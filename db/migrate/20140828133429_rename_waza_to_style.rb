class RenameWazaToStyle < ActiveRecord::Migration
  def up
    remove_index :applied_techniques, :waza_id
    rename_column :applied_techniques, :waza_id, :style_id
    rename_table :wazas, :styles
    add_column :videos, :style_id, :integer
    add_index :videos, :style_id
  end
  def down
    remove_index :videos, :style_id
    remove_column :videos, :style_id
    rename_table :styles, :wazas
    rename_column :applied_techniques, :style_id, :waza_id
    add_index :applied_techniques, :waza_id
  end
end
