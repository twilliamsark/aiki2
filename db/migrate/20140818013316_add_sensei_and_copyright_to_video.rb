class AddSenseiAndCopyrightToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :sensei, :string
    add_column :videos, :copyright, :string
  end
end
