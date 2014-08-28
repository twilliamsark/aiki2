class AddAttackHeightToVideo < ActiveRecord::Migration
  def up
    add_column :videos, :attack_height_id, :integer
    add_index :videos, :attack_height_id
    remove_index :applied_techniques, :attack_height_id
  end
  def down
    add_index :applied_techniques, :attack_height_id
    remove_index :videos, :attack_height_id
    remove_column :videos, :attack_height_id
  end
end
