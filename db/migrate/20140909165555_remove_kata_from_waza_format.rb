class RemoveKataFromWazaFormat < ActiveRecord::Migration
  def up
    remove_index :waza_formats, :kata_id
    remove_column :waza_formats, :kata_id
    remove_column :waza_formats, :kata_number
  end

  def down
    add_column :waza_formats, :kata_number, :integer
    add_column :waza_formats, :kata_id, :integer
    add_index :waza_formats, :kata_id
  end
end
