class AddDescriptionAndPrimaryToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :primary, :boolean, default: false
    add_column :videos, :description, :string
  end
end
