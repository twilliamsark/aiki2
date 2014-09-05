class CreateWazaFormats < ActiveRecord::Migration
  def up
    create_table :waza_formats do |t|
      t.references :waza, index: true
      t.references :format, index: true
      t.references :rank, index: true
      t.references :kata, index: true
      t.boolean :on_test, default: false
      t.timestamps
    end
    add_column :videos, :waza_format_id, :integer
    add_index :videos, :waza_format_id
  end

  def down
    remove_index :videos, :waza_format_id
    remove_column :videos, :waza_format_id
    drop_table :waza_formats
  end
end
