class CreateTestingLevels < ActiveRecord::Migration
  def change
    create_table :testing_levels do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_column :applied_techniques, :testing_level_id, :integer
    add_index :applied_techniques, :testing_level_id
  end
end
