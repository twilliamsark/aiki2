class AddOnTestToAppliedTechnique < ActiveRecord::Migration
  def change
    add_column :applied_techniques, :on_test, :boolean, default: false
  end
end
