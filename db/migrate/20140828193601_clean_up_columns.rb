class CleanUpColumns < ActiveRecord::Migration
  def up
    remove_index :videos, :waza_id
    remove_column :videos, :waza_id

    remove_column :wazas, :rank_id
    remove_column :wazas, :kata_id
    remove_column :wazas, :format_id
    remove_column :wazas, :attack_height_id
    remove_column :wazas, :style_id
    remove_column :wazas, :related_id
    remove_column :wazas, :on_test

    add_index :wazas, :stance_id
    add_index :wazas, :attack_id
    add_index :wazas, :technique_id
    add_index :wazas, :direction_id
  end

  def down
    remove_index :wazas, :direction_id
    remove_index :wazas, :technique_id
    remove_index :wazas, :attack_id
    remove_index :wazas, :stance_id

    add_column :wazas, :on_test, :boolean, default: false
    add_column :wazas, :related_id, :integer
    add_column :wazas, :style_id, :integer
    add_column :wazas, :attack_height_id, :integer
    add_column :wazas, :format_id, :integer
    add_column :wazas, :kata_id, :integer
    add_column :wazas, :rank_id, :integer

    add_column :videos, :waza_id, :integer
    add_index :videos, :waza_id
  end
end
