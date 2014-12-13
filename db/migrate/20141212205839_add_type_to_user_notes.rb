class AddTypeToUserNotes < ActiveRecord::Migration
  def up
    rename_table :user_notes, :notes
    add_column :notes, :title, :string
    add_column :notes, :type, :string
  end

  def down
    remove_column :notes, :title
    remove_column :notes, :type
    rename_table :notes, :user_notes
  end
end
