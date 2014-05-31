class AddPositionToAppliedTechnique < ActiveRecord::Migration
  def change
    add_column :applied_techniques, :position, :integer
  end
end
