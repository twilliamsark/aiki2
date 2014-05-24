class RemoveArt < ActiveRecord::Migration
  def up
    remove_index :applied_techniques, :art_id
    remove_column :applied_techniques, :art_id
    drop_table :arts
  end

  def down
    create_table :arts do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
    add_column :applied_techniques, :art_id, :integer
    add_index :applied_techniques, :art_id
  end
end
