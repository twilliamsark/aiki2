class AddShortDescriptions3 < ActiveRecord::Migration
  def change
    add_column :attacks, :short_description, :string, limit: 20
    add_column :ranks, :short_description, :string, limit: 20
  end
end
