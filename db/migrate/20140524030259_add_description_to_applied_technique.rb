class AddDescriptionToAppliedTechnique < ActiveRecord::Migration
  def change
    add_column :applied_techniques, :short_description, :string, limit: 20
    add_column :applied_techniques, :description, :string
  end
end
