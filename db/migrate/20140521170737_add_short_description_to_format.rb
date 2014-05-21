class AddShortDescriptionToFormat < ActiveRecord::Migration
  def change
    add_column :formats, :short_description, :string
  end
end
