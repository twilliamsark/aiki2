class AddRelatedIdToAppliedTechnique < ActiveRecord::Migration
  def change
    add_column :applied_techniques, :related_id, :integer, default: nil
    add_index :applied_techniques, :related_id
  end
end
