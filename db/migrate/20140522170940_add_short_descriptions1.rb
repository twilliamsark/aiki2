class AddShortDescriptions1 < ActiveRecord::Migration
  def change
    add_column :techniques, :short_description, :string, limit: 20
    add_column :directions, :short_description, :string, limit: 20
  end
end
