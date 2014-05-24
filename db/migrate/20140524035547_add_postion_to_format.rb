class AddPostionToFormat < ActiveRecord::Migration
  def change
    add_column :formats, :position, :integer, default: 0
  end
end
