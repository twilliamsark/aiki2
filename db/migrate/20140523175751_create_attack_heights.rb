class CreateAttackHeights < ActiveRecord::Migration
  def change
    create_table :attack_heights do |t|
      t.string :name
      t.string :short_description, limit: 20
      t.string :description

      t.timestamps
    end
    add_column :applied_techniques, :attack_height_id, :integer
    add_index :applied_techniques, :attack_height_id
  end
end
