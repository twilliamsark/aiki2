class RemoveTestingLevels < ActiveRecord::Migration
  def up
    remove_index :applied_techniques, :testing_level_id
    remove_column :applied_techniques, :testing_level_id
    drop_table :testing_levels
  end

  def down
    create_table :testing_levels do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_column :applied_techniques, :testing_level_id, :integer
    add_index :applied_techniques, :testing_level_id
  end
end
