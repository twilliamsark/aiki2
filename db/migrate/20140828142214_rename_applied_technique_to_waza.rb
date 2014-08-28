class RenameAppliedTechniqueToWaza < ActiveRecord::Migration
  def up
    remove_index :applied_techniques, :attack_id
    remove_index :applied_techniques, :direction_id
    remove_index :applied_techniques, :format_id
    remove_index :applied_techniques, :kata_id
    remove_index :applied_techniques, :rank_id
    remove_index :applied_techniques, :related_id
    remove_index :applied_techniques, :stance_id
    remove_index :applied_techniques, :technique_id

    remove_index :videos, :applied_technique_id
    rename_table :applied_techniques, :wazas
    rename_column :videos, :applied_technique_id, :waza_id
    add_index :videos, :waza_id
  end

  def down
    remove_index :videos, :waza_id
    rename_column :videos, :waza_id, :applied_technique_id
    rename_table :wazas, :applied_techniques
    add_index :videos, :applied_technique_id

    add_index :applied_techniques, :attack_id
    add_index :applied_techniques, :direction_id
    add_index :applied_techniques, :format_id
    add_index :applied_techniques, :kata_id
    add_index :applied_techniques, :rank_id
    add_index :applied_techniques, :related_id
    add_index :applied_techniques, :stance_id
    add_index :applied_techniques, :technique_id
  end
end
