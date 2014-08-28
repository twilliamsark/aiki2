class CreateWazaFormats < ActiveRecord::Migration
  def change
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
end
