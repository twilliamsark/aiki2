class AddStateToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :active, :boolean, default: :false
    add_column :videos, :for_demo, :boolean, default: :false
  end
end
