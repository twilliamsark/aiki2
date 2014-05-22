class AddShortDescriptions2 < ActiveRecord::Migration
  def change
    add_column :stances, :short_description, :string, limit: 20
    add_column :wazas, :short_description, :string, limit: 20
    add_column :testing_levels, :short_description, :string, limit: 20
  end
end
