class CreateSenseis < ActiveRecord::Migration
  def up
    create_table :senseis do |t|
      t.string :name
      t.string :dojo

      t.timestamps
    end

    remove_column :videos, :sensei
    add_column :videos, :sensei_id, :integer
    add_index :videos, :sensei_id
  end

  def down
    remove_index :videos, :sensei_id
    remove_column :videos, :sensei_id
    add_column :videos, :sensei, :string
    drop_table :senseis
  end
end
